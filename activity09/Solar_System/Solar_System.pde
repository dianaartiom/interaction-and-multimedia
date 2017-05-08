float mercuryAngle = 0;
float venusAngle = 0;
float earthAngle = 0;
float moonAngle = 0;
float angle = 0;
float translateDisplacement = 0;

public void setup() {
  size(500, 500);
  noStroke();
  smooth();
}

public void draw() {
  background(0);
  drawSun();                    /* function call to draw the Sun ellipse */              
  drawEarth();                    /* function call to draw the Earth ellipse */
  drawVenus();                    /* function call to draw the Venus ellipse */
  drawMercury();                  /* function call to draw the Mercury ellipse */
}

/* draws a circle of yellow color in the center of the window */
void drawSun() {
  fill(255, 255, 0);             /* sets the color to be yellow */
  ellipse(width / 2, height / 2, width / 6, width / 6);     /* draws an ellipse at the center of the screen */
}

/* draws the elipse */
void drawShape(float angle, float translateDisplacement, float placement, float trial) {
  translate(width / 2, width / 2);              /* displaces the object half width right and half height down */
  rotate(angle);                                /* rotates the amount specified by the earthAngle parameter */
  translate(-width / 2, -width / 2);            /* reset to the previous position */
  translate(width / translateDisplacement, 0);                    /* displaces the object width/4 to the right */ 
  ellipse(width / 2, height / 2, width / trial, width / placement);  /* draws an ellipse */
}

/* draws the Earth ellipse */
void drawEarth() {
  earthAngle += 0.01;                           /* increments the mercury ellipse angle of rotation by 0.05 */
  pushMatrix();                                 /* pushes the current transformation matrix onto the matrix stack */
  fill(0, 0, 255);                              /* colors the ellipse green */
  drawShape(earthAngle, 2.5, 20, 20);
  fill(255, 255, 255);
  moonAngle += 0.02;
  drawShape(moonAngle, 12, 40, 40);
  popMatrix();                                  /* pops the current transformation matrix off the matrix stack */
}

/* draws the Venus ellipse */
void drawVenus() {
  venusAngle -= 0.06;                         /* increments the mercury ellipse angle of rotation by 0.05 */
  pushMatrix();                                 /* pushes the current transformation matrix onto the matrix stack */
  fill(0, 255, 0);                              /* colors the ellipse green */
  drawShape(venusAngle, 4, 20, 20);
  popMatrix();                                  /* pops the current transformation matrix off the matrix stack */
}

/* draws the Mercury ellipse */
void drawMercury() {
  mercuryAngle += 0.05;                         /* increments the mercury ellipse angle of rotation by 0.05 */  
  pushMatrix();                                 /* pushes the current transformation matrix onto the matrix stack */
  fill(255, 0, 0);                              /* colors the ellipse red */
  drawShape(mercuryAngle, 7, 20, 20);
  popMatrix();            
}
