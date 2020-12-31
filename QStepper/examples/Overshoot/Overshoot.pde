// Overshoot.pde
// -*- mode: C++ -*-
//

#include <QStepper.h>

// Define a stepper and the pins it will use
QStepper stepper; // Defaults to QStepper::FULL4WIRE (4 pins) on 2, 3, 4, 5

void setup()
{  
  stepper.setMaxSpeed(150);
  stepper.setAcceleration(100);
}

void loop()
{    
  stepper.moveTo(500);
  while (stepper.currentPosition() != 300) // Full speed up to 300
    stepper.run();
  stepper.runToNewPosition(0); // Cause an overshoot then back to 0
}
