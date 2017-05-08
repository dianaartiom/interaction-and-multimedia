float mercuryAngle = 0;          /* used for mercury ellipse rotation */
float venusAngle = 0;            /* used for venus ellipse rotation */
float earthAngle = 0;            /* used for earth ellipse rotation */
float moonAngle = 0;             /* used for moon ellipse rotation */

public void setup() {
  size(500, 500);                /* sets the window size: width = 500 and height = 500 */    
  noStroke();                    /* disables drawing the stroke */
  smooth();                      /* draws all geometry with smooth, anti-aliased edges */
}

public void draw() {
  background(0);
  drawSun();                      /* function call to draw the Sun ellipse */              
  drawEarth();                    /* function call to draw the Earth ellipse */
  drawVenus();                    /* function call to draw the Venus ellipse */
  drawMercury();                  /* function call to draw the Mercury ellipse */
}

/* draws a circle of yellow color in the center of the window */
void drawSun() {
  fill(255, 255, 0);             /* sets the color to be yellow */
  ellipse(width / 2, height / 2, width / 6, width / 6);              /* draws an ellipse at the center of the screen */
}

/* draws the elipse */
void drawShape(float angle, float translateDisplacement, float placement, float trial) {
  translate(width / 2, width / 2);                                   /* displaces the object half width right and half height down */
  rotate(angle);                                                     /* rotates the amount specified by the earthAngle parameter */
  translate(-width / 2, -width / 2);                                 /* reset to the previous position */
  translate(width / translateDisplacement, 0);                       /* displaces the object width/4 to the right */ 
  ellipse(width / 2, height / 2, width / trial, width / placement);  /* draws an ellipse */
}

/* draws the Earth ellipse */
void drawEarth() {
  earthAngle += 0.01;                           /* increments the mercury ellipse angle of rotation by 0.05 */
  pushMatrix();                                 /* pushes the current transformation matrix onto the matrix stack */
  fill(0, 0, 255);                              /* colors the ellipse green */
  drawShape(earthAngle, 2.5, 20, 20);           /* draws the shape */
  fill(255, 255, 255);                          /* colors the ellipse white */
  moonAngle += 0.02;                            /* increments the mercury ellipse angle of rotation by 0.02 */
  drawShape(moonAngle, 12, 40, 40);             /* draws an ellipse */
  popMatrix();                                  /* pops the current transformation matrix off the matrix stack */
}

/* draws the Venus ellipse */
void drawVenus() {
  venusAngle -= 0.06;                           /* increments the mercury ellipse angle of rotation by 0.05 */
  pushMatrix();                                 /* pushes the current transformation matrix onto the matrix stack */
  fill(0, 255, 0);                              /* colors the ellipse green */
  drawShape(venusAngle, 4, 20, 20);             /* draws the shape */
  popMatrix();                                  /* pops the current transformation matrix off the matrix stack */
}

/* draws the Mercury ellipse */
void drawMercury() {
  mercuryAngle += 0.05;                         /* increments the mercury ellipse angle of rotation by 0.05 */
  pushMatrix();                                 /* pushes the current transformation matrix onto the matrix stack */
  fill(255, 0, 0);                              /* colors the ellipse red */
  drawShape(mercuryAngle, 7, 20, 20);           /* draws the shape */
  popMatrix();                                  /* pops the current transformation matrix off the matrix stack */
}