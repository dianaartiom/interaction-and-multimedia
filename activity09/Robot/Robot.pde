int CenterRobotX = 125;         /* center of the window */
float rightLegAngle = 0;        /* rotation angle for right leg  */
float leftLegAngle = 0;         /* rotation angle for the left leg */
float rightArmAngle = 0;        /* roation angle for the right arm */
float leftArmAngle = 0;         /* roation angle for the left arm */

/* runs once */
public void setup() {
  size(250, 250);               /* sets window's size to be: height = 250 and width = 250 */
  smooth();                     /* draws all geometry with smooth, anti-aliased edges */
  fill(199, 203, 27);           /* colors the shape with the corespondent color */
}

/* runs continuously */
public void draw() {
  background(255);              /* sets the background to be white */
  rect(110, 60, 30, 30);        /* draws a rectangle - "head" of the robot */
  rect(100, 90, 50, 80);        /* draws a rectangle - upper half of the robot body */

  drawRightArm();               /* function call to draw robot's right arm */
  drawLeftArm();                /* function call to draw robot's left arm */
  drawRightLeg();               /* function call to draw robot's right leg */
  drawLeftLeg();                /* function call to draw robot's left leg */
  
  if (mousePressed) {                                                /* checks if the mouse button was pressed */
    if (mouseX < CenterRobotX) {                                     /* checks the mouse position - in which half of the window */                                 
      rightArmAngle = (atan2(mouseY - 90, mouseX - 100) - 1.5);      /* updates the value for right arm rotation angle */
    } else {
      leftArmAngle = (atan2(mouseY - 90, mouseX - 150) - 1.5);       /* updates the value for left arm rotation angle */
    }
  }
}

/* function to draw the right arm */
public void drawRightArm() {
  pushMatrix();                 /* pushes the current transformation matrix onto the matrix stack */
  translate(100, 90);           /* displaces the object 100 right and 90 down */    
  rotate(rightArmAngle);        /* rotates the amount specified by the rightArmAngle parameter */
  translate(-100, -90);         /* reset to the position */
  rect(85, 90, 15, 50);         /* draws a rectangle - the right robot arm */
  popMatrix();                  /* pops the current transformation matrix off the matrix stack */
}

/* function to draw the left arm */
public void drawLeftArm() {
  pushMatrix();                 /* pushes the current transformation matrix onto the matrix stack */
  translate(150, 90);           /* displaces the object 150 right and 90 down */
  rotate(leftArmAngle);         /* rotates the amount specified by the leftArmAngle parameter */
  translate(-150, -90);         /* reset to the previous position */
  rect(150, 90, 15, 50);        /* draws a rectangle - the left robot arm */ 
  popMatrix();                  /* pops the current transformation matrix off the matrix stack */
}  

/* function to draw the right leg */
public void drawRightLeg() {
  pushMatrix();                 /* pushes the current transformation matrix onto the matrix stack */
  translate(120, 170);          /* displaces the object 120 right and 170 down */
  rotate(rightLegAngle);        /* rotates the amount specified by the rightLegAngle parameter */
  translate(-120, -170);        /* reset to the previous position */
  rect(105, 170, 15, 60);       /* draws a rectangle - the right robot leg */
  popMatrix();                  /* pops the current transformation matrix off the matrix stack */
}

/* function to draw the left leg */
public void drawLeftLeg() {
  pushMatrix();                 /* pushes the current transformation matrix onto the matrix stack */
  translate(130, 170);          /* displaces the object 130 right and 170 down */
  rotate(leftLegAngle);         /* rotates the amount specified by the leftLegAngle parameter */
  translate(-130, -170);        /* reset to the previous position */
  rect(130, 170, 15, 60);       /* draws a rectangle - the left robot leg */
  popMatrix();                  /* pops the current transformation matrix off the matrix stack */
}

/* called once every time a key is pressed */
public void keyPressed() {
  switch (key) {
    case 'z':                   /* the pressed key was "z" */
      rightLegAngle += 0.1;     /* increment the right leg angle by 0.1 rad */
      break;
    case 'x':                   /* the pressed key was "x" */
      rightLegAngle -= 0.1;     /* decrement the right leg angle by 0.1 rad */
      break;
    case 'n':                   /* the pressed key was "n" */
      leftLegAngle += 0.1;      /* increment the left leg angle by 0.1 rad */
      break;
    case 'm':                   /* the pressed key was "m" */
      leftLegAngle -= 0.1;      /* decrement the left leg angle by 0.1 rad */
  }  
} 