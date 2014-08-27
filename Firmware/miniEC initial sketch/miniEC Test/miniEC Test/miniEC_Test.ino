/// 
/// @mainpage	miniEC Test 
///
/// @details	Initial testing of miniEC
/// @n 		
/// @n 
/// @n @a		Developed with [embedXcode+](http://embedXcode.weebly.com)
/// 
/// @author		Margaret Johnson
/// @author		Margaret Johnson
/// @date		8/25/14 4:22 AM
/// @version	<#version#>
/// 
/// @copyright	(c) Margaret Johnson, 2014
/// @copyright	License
///
/// @see		ReadMe.txt for references
///


///
/// @file		miniEC_Test.ino
/// @brief		Main sketch
///
/// @details	<#details#>
/// @n @a		Developed with [embedXcode+](http://embedXcode.weebly.com)
/// 
/// @author		Margaret Johnson
/// @author		Margaret Johnson
/// @date		8/25/14 4:22 AM
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

// Include application, user and local libraries
#include <avr/eeprom.h>

// Prototypes
void reset_Params(void);

// Define variables and constants
//Our parameter, for ease of use and eeprom access lets use a struct
struct parameters_T
{
    unsigned int WriteCheck;
    int eCLowCal, eCHighCal;
    bool continous;
    float eCStep;
}
params;
//Continuous reading flag
bool continousFlag,statusGFlag;
//EEPROM trigger check
#define Write_Check      0x1234

// Add setup code 
void setup() 
{
    Serial.begin(9600);
    eeprom_read_block(&params, (void *)0, sizeof(params));
    continousFlag = params.continous;
    if (params.WriteCheck != Write_Check){
        reset_Params();
    }
}

// Add loop code 
void loop() 
{

}


void reset_Params(void)
{
    //Restore to default set of parameters!
    params.WriteCheck = Write_Check;
    params.continous = false; //toggle continuous readings
    params.eCLowCal = 512; //assume ideal probe and amp conditions 1/2 of 4096
    params.eCHighCal = 382; //using ideal probe slope we end up this many 10bit units away on the 4 scale
    params.eCStep = 59.16;//ideal probe slope
    eeprom_write_block(&params, (void *)0, sizeof(params)); //write these settings back to eeprom
}