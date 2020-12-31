// AFMotor_ConstantSpeed.pde
// -*- mode: C++ -*-
//
#include <QStepper.h>
#include <AFMotor.h>

AF_Stepper motor1(200, 1);


// you can change these to DOUBLE or INTERLEAVE or MICROSTEP!
void forwardstep() {  
  motor1.onestep(FORWARD, SINGLE);
}
void backwardstep() {  
  motor1.onestep(BACKWARD, SINGLE);
}

QStepper stepper(forwardstep, backwardstep); // use functions to step

void setup()
{  
   Serial.begin(9600);           // set up Serial library at 9600 bps
   Serial.println("Stepper test!");
  
   stepper.setMaxSpeed(50);	
   stepper.setSpeed(50);	
}

void loop()
{  
   stepper.runSpeed();
}
