/// 
/// @mainpage	Atlas-Scientific EC Testing 
///
/// @details	Initial testing of Atlas-Scientific EC hardware
/// @n 		
/// @n 
/// @n @a		Developed with [embedXcode+](http://embedXcode.weebly.com)
/// 
/// @author		Margaret Johnson
/// @author		Margaret Johnson
/// @date		8/26/14 3:39 PM
/// @version	<#version#>
/// 
/// @copyright	(c) Margaret Johnson, 2014
/// @copyright	License
///
/// @see		ReadMe.txt for references
///


///
/// @file		Atlas_Scientific_EC_Testing.ino
/// @brief		Main sketch
///
/// @details	<#details#>
/// @n @a		Developed with [embedXcode+](http://embedXcode.weebly.com)
/// 
/// @author		Margaret Johnson
/// @author		Margaret Johnson
/// @date		8/26/14 3:39 PM
/// @version	<#version#>
/// 
/// @copyright	(c) Margaret Johnson, 2014
/// @copyright	License
///
/// @see		ReadMe.txt for references
/// @n
///


// Core library for code-sense
#if defined(WIRING) // Wiring specific
#include "Wiring.h"
#elif defined(MAPLE_IDE) // Maple specific
#include "WProgram.h"
#elif defined(MPIDE) // chipKIT specific
#include "WProgram.h"
#elif defined(DIGISPARK) // Digispark specific
#include "Arduino.h"
#elif defined(ENERGIA) // LaunchPad MSP430 G2 and F5529, Stellaris and Tiva, Experimeter Board FR5739 specific
#include "Energia.h"
#elif defined(MICRODUINO) // Microduino specific
#include "Arduino.h"
#elif defined(TEENSYDUINO) // Teensy specific
#include "Arduino.h"
#elif defined(ARDUINO) // Arduino 1.0 and 1.5 specific
#include "Arduino.h"
#else // error
#error Platform not defined
#endif
/*
 This software was made to demonstrate how to quickly get your Atlas Scientific product running on the Arduino platform.
 An Arduino Duemilanove board was used to test this code.
 This code was written in the Arudino 1.0 IDE
 Modify the code to fit your system.
 Code efficacy was NOT considered, this is a demo only.
 The soft serial port TX line goes to the RX pin.
 The soft serial port RX line goes to the TX pin.
 Make sure you also connect to power and GND pins to power and a common ground.
 Data is received and re-sent through the Arduinos hardware UART TX line.
 Open TOOLS > serial monitor, set the serial monitor to the correct serial port and set the baud rate to 38400.
 Remember, select carriage return from the drop down menu next to the baud rate selection; not "both NL & CR".
 The data from the Atlas Scientific product will come out on the serial monitor.
 Type in a command in the serial monitor and the Atlas Scientific product will respond.
 */
// Include application, user and local libraries


// Prototypes


// Define variables and constants




//**THIS CODE WILL WORK ON ANY ARDUINO**
//This code has intentionally has been written to be overly lengthy and includes unnecessary steps.
//Many parts of this code can be truncated. This code was written to be easy to understand.
//Code efficiency was not considered. Modify this code as you see fit.
//This code will output data to the Arduino serial monitor. Type commands into the Arduino serial monitor to control the EZO EC Circuit in I2C mode.


#include <SoftwareSerial.h>                                                    //add the soft serial libray
#define rxpin 2                                                                //set the RX pin to pin 2
#define txpin 3                                                                //set the TX pin to pin 3


SoftwareSerial myserial(rxpin, txpin);                                         //enable the soft serial port


String inputstring = "";                                                       //a string to hold incoming data from the PC
String sensorstring = "";                                                      //a string to hold the data from the Atlas Scientific product
boolean input_stringcomplete = false;                                          //have we received all the data from the PC
boolean sensor_stringcomplete = false;                                         //have we received all the data from the Atlas Scientific product


void setup(){                                                                //set up the hardware
    Serial.begin(9600);                                                      //set baud rate for the hardware serial port to 38400
    myserial.begin(38400);                                                    //set baud rate for software serial port to 38400
    inputstring.reserve(5);                                                   //set aside some bytes for receiving data from the PC
    sensorstring.reserve(30);                                                 //set aside some bytes for receiving data from Atlas Scientific product
}



void serialEvent() {                                                         //if the hardware serial port receives a char
    char inchar = (char)Serial.read();                               //get the char we just received
    inputstring += inchar;                                           //add it to the inputString
    if(inchar == '\r') {input_stringcomplete = true;}                //if the incoming character is a <CR>, set the flag
}



void loop(){                                                                   //here we go....
    
    if (input_stringcomplete){                                                   //if a string from the PC has been recived in its entierty
        myserial.print(inputstring);                                             //send that string to the Atlas Scientific product
        inputstring = "";                                                        //clear the string:
        input_stringcomplete = false;                                            //reset the flage used to tell if we have recived a completed string from the PC
    }
    
    
    while (myserial.available()) {                                               //while a char is holding in the serial buffer
        char inchar = (char)myserial.read();                                  //get the new char
        sensorstring += inchar;                                               //add it to the sensorString
        if (inchar == '\r') {sensor_stringcomplete = true;}                   //if the incoming character is a <CR>, set the flag
    }
    
    
    if (sensor_stringcomplete){                                                 //if a string from the Atlas Scientific product has been received in its entirety
        Serial.print(sensorstring);                                             //use the hardware serial port to send that data to the PC
        sensorstring = "";                                                      //clear the string:
        sensor_stringcomplete = false;                                          //reset the flag used to tell if we have received a completed string from the Atlas Scientific product
    }
}
