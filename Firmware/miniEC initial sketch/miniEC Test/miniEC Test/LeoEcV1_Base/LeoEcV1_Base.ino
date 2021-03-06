/*
 This is the base example sketch for using the LeoPhi hardware version2 and up. 
 It can output via USB serial and Serial1(hardware USART) just use which one you need. 
 Also there is an I2C slave enabled version of this for an example how to use via I2C.
 There are a number of ways to calculate pH based on the E(electromagnetic potential) reading from our circuit.
 We will use a simple method, but recommend using temperature compensation maths for a much better results.
 A rolling average method is also implemented to filter the reading before display. Don't forget there are many pins
 broken out on the headers(I2C,Serial1,PWM,AnanlogIn). Unlike version 1 of the hardware all the status LED pins are now PWM enabled.
 though they still sink instead of source so keep that in mind!
 
 Usage is simple as passing in commands to read pH, set calibration points, read with temp, etc...
 Feel free to adjust per usage, and please share so others can learn from any additions too!!
 LeoPhi can operate from (VCC) 2.65 to 5 so remember to set your reference voltage in math to this VCC.
 Sparky's Widgets 2012
 http://www.sparkyswidgets.com/Projects/LeoPhi.aspx

 */
#include <LiquidCrystal.h>
#include <avr/eeprom.h> 

int ECIN      =      A8;
int GREENLED  =      10; //All Status LEDS on PWM, though they sink not source
int BLUELED   =      11; 
int REDLED    =       9; 

//LED fade effects
int brightness =      0;
int fadeAmount =      5;

//State machine base variables, do I really need two separate states, easier to code LED heartbeat and adc sample rate
long previousMillis = 0;
long adcMillis = 0;       
int statusInterval = 1000;           // interval at which to blink or send updates(milliseconds)
int adcReadInterval = 20;           // Our ADC read routine should be cycling at about ~50hz (20ms)

//EEPROM trigger check
#define Write_Check      0x1234 
#define VERSION 0x0002

const float vRef = 5.00; //Set our voltage reference (what is out Voltage at the Vin (+) of the ADC in this case an atmega32u4)

//Rolling average this should act as a digital filter (IE smoothing)
const int numPasses = 200; //Larger number = slower response but greater smoothing effect

int passes[numPasses];    //Our storage array
int passIndex = 0;          //what pass are we on? this one
long total = 0;              //running total
int eCSmooth = 0;           //Our smoothed pHRaw number

//pH calc globals
float milliVolts, eC; //using floats will transmit as 4 bytes over I2C

//Continuous reading flag
bool continousFlag,statusGFlag;

//Our parameter, for ease of use and eeprom access lets use a struct
struct parameters_T
{
  unsigned int WriteCheck;
  int eCLowCal, eCHighCal;
  bool continous,statusLEDG;
  float eCStep;
} 
params;

void setup()  
{
  pinMode(GREENLED, OUTPUT);
  pinMode(REDLED, OUTPUT);
  pinMode(BLUELED, OUTPUT);
  pinMode(4, OUTPUT);
  digitalWrite(REDLED, HIGH);
  digitalWrite(BLUELED, HIGH);
  digitalWrite(GREENLED, HIGH);
  pinMode(ECIN, INPUT);
  //Serial1.begin(57600); //Enable basic serial commands in base version
  eeprom_read_block(&params, (void *)0, sizeof(params));
  continousFlag = params.continous;
  statusGFlag = params.statusLEDG;
  if (params.WriteCheck != Write_Check){
    reset_Params();
  }
  sendSerialStatusInfo('I');
  // initialize smoothing variables to 0: 
  for (int thisPass = 0; thisPass < numPasses; thisPass++)
    passes[thisPass] = 0;

}

void loop()
{
  //Our smoothing portion
  //subtract the last pass
  unsigned long currentMillis = millis();

if(currentMillis - adcMillis > adcReadInterval)
  {
    // save the last time you blinked the LED 
    adcMillis = currentMillis;

    total = total - passes[passIndex];
    //grab our pHRaw this should pretty much always be updated due to our Oversample ISR
    //and place it in our passes array this mimics an analogRead on a pin
    digitalWrite(4, HIGH); 
    passes[passIndex] = smoothADCRead(ECIN);
    digitalWrite(4, LOW); //these will show our sampling fQ checking with scope!
    total = total + passes[passIndex];
    passIndex = passIndex + 1;
    //Now handle end of array and make our rolling average portion
    if(passIndex >= numPasses)
    {
    passIndex = 0;
    }
    
    eCSmooth = total/numPasses;

    //This is for our status LED heartbeats display however needed
    if(statusGFlag)
      {
        analogWrite(BLUELED, brightness);    
        // change the brightness for next time through the loop:
        brightness = brightness + fadeAmount;
        // reverse the direction of the fading at the ends of the fade: 
        if (brightness == 0 || brightness == 255) {
          fadeAmount = -fadeAmount ; 
        }
      }

  }


  if(Serial.available() ) 
  {
    String msgIN = "";
    int msgLength = 18;
    int msgCount = 0;
    char c;
    while(Serial.available() && msgCount < msgLength)
    {
     c = Serial.read();  
     msgIN += c;
     msgCount++;// just a little bit of string length protection
     }
     processMessage(msgIN);
  }

  calceC();

  if(currentMillis - previousMillis > statusInterval)
  {
    // save the last time you blinked the LED 
    previousMillis = currentMillis;   
    
    if(continousFlag)
    {
     digitalWrite(REDLED,LOW);
     sendSerialStatusInfo('S');
    }
    digitalWrite(REDLED,HIGH); //we place here in the odd case if you exit C mode while LED is on
  }
}

void calceC()
{
 //float temp = ((((vRef*(float)params.pH7Cal)/1024)*1000)- calcMilliVolts(pHSmooth))/opampGain;
 //pH = 7-(temp/params.pHStep);
}

float calcMilliVolts(int numToCalc)
{
 float calcMilliVolts = (((float)numToCalc/1024)*vRef)*1000; //pH smooth is our rolling average mine as well use it
 return calcMilliVolts;
}

int smoothADCRead(int whichPin)
{
  //lets just take a reading and drop it, this should eliminate any ADC multiplexer issues
  int throwAway = analogRead(whichPin);
  int smoothADCRead = analogRead(whichPin);
  return smoothADCRead;
}

void sendSerialStatusInfo(char charStatusInfo)
{
  if(charStatusInfo == 'S')
  {
    Serial.print("eCRaw: ");
    Serial.print(eCSmooth);
    Serial.print(" | ");
    Serial.print("eC: ");
    Serial.print(eC);
    Serial.print(" | ");
    Serial.print("Millivolts: ");
    Serial.println(calcMilliVolts(eCSmooth));
  }
  if(charStatusInfo == 'I')
  {
   Serial.print("LeoEc Info: Firmware Ver ");
   Serial.println(VERSION);
   Serial.print("eC Low cal: ");
   Serial.print(params.eCLowCal);
   Serial.print(" | ");
   Serial.print("eC High cal: ");
   Serial.print(params.eCHighCal);
   Serial.print(" | ");
   Serial.print("eC probe slope: ");
   Serial.println(params.eCStep);
  }
}

//FIXME: re factor, and don't use Strings bah, it works for now... no long inputs!
void processMessage(String msg)
{
  if(msg.startsWith("L"))
  {
    if (msg.substring(2,1) ==  "0") 
    {
     //Status led visual indication of a working unit on powerup 0 means off
     statusGFlag = false;
     digitalWrite(BLUELED, HIGH);
     Serial.println("Status led off");
     params.statusLEDG = statusGFlag;
     eeprom_write_block(&params, (void *)0, sizeof(params)); 
    }
    if (msg.substring(2,1) ==  "1") 
    {
     //Status led visual indication of a working unit on powerup 0 means off
     statusGFlag = true;
     Serial.println("Status led on");
     params.statusLEDG = statusGFlag;
     eeprom_write_block(&params, (void *)0, sizeof(params));  
    }
     
  }
  if(msg.startsWith("R"))
  {
    //take a pH reading
   calceC();
   Serial.println(eC); 
  }
  if(msg.startsWith("C"))
  {
     continousFlag = true;
     Serial.println("Continuous Reading On");
     params.continous = continousFlag;
     eeprom_write_block(&params, (void *)0, sizeof(params));
  }
  if(msg.startsWith("E"))
  {
   //exit continuous reading mode
     continousFlag = false;
     Serial.println("Continuous Reading Off");
     params.continous = continousFlag;
     eeprom_write_block(&params, (void *)0, sizeof(params)); 
  }
  if(msg.startsWith("S"))
  {
   //Calibrate to pH7 solution, center on this for zero
   Serial.println("Calibrate Low");
   params.eCLowCal = eCSmooth;
   eeprom_write_block(&params, (void *)0, sizeof(params));
  }
  if(msg.startsWith("F"))
  {
   //calibrate to pH4 solution, recalculate our slope to account for probe
   Serial.println("Calibrate High");
   params.eCHighCal = eCSmooth;
   //RefVoltage * our deltaRawpH / 10bit steps *mV in V / OP-Amp gain /pH step difference 7-4
   params.eCStep = ((((vRef*(float)(params.eCLowCal - params.eCHighCal))/1024)*1000));
   eeprom_write_block(&params, (void *)0, sizeof(params));
  }
  if(msg.startsWith("I"))
  {
   //Lets read in our parameters and spit out the info! 
   eeprom_read_block(&params, (void *)0, sizeof(params));
   sendSerialStatusInfo('I');
  }
    if(msg.startsWith("X"))
  {
    //restore to default settings
    Serial.println("Reseting to default settings");
    reset_Params();
  }
}

void reset_Params(void)
{
  //Restore to default set of parameters!
  params.WriteCheck = Write_Check;
  params.statusLEDG = true;
  params.continous = false; //toggle continuous readings
  params.eCLowCal = 512; //assume ideal probe and amp conditions 1/2 of 4096
  params.eCHighCal = 382; //using ideal probe slope we end up this many 10bit units away on the 4 scale
  params.eCStep = 59.16;//ideal probe slope
  eeprom_write_block(&params, (void *)0, sizeof(params)); //write these settings back to eeprom
}

