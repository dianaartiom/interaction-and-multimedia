/* this program draws lines according to sine and cosine functions */

float cos, sin;                       /* variable for computed values of func sine and cosine */
float angle;                          /* variable for angle of the each of the sine and cosine functions */
float radius = height;                /* altitude of the sine and cosine functions */
float frequency = 1;                  /* frequiency of the functions */

/* setup runs once - at the beginning of the program */
void setup() {
  size(400, 200);                      /* set the window size to be: width = 400, height = 200 */
  background(0);                      /* set the backgrould color to be black, as required */
}

/* continuous loop */
void draw() {
  drawCentreXline();
  drawSine();                          /* calls the drawSine() to draw the sine curve */
  drawCosine();                        /* calls the drawCosine() to draw the cosine curve */
}  

/* drawSine() function draws the sine curve
by printing points on the screen, in computed coordinates */
void drawSine() {
  angle = 0;                                                /* initialize the angle to be 0 */
  for (int i = 0; i< width; i++) {
    sin = height/2 + sin(radians(angle))*(radius);          /* compute the y value for the poient to be drawn */
    stroke(255, 0, 0);                                      /* set the stroke of the point to be red color */  
    point(i, sin);                                          /* draws the point */
    angle -= frequency*360/width;                           /* decrease angle by frequency, taking into account the screen width */ 
  }
}

/* drawSine() function draws the cosine curve
by printing points on the screen, in computed coordinates */
void drawCosine() {
  angle = 0;                                                /* initialize the angle to be 0 */
  for (int i = 0; i< width; i++) {
    cos = height/2 + cos(radians(angle) + PI)*(radius);     /* compute the y value for the poient to be drawn */
    stroke(0, 255, 0);                                      /* set the stroke of the point to be green color */  
    point(i, cos);                                          /* draws the point */
    angle -= frequency*360/width;                           /* decrease angle by frequency, taking into account the screen width */ 
  }
}

/* function drawCentreXline - draws a horizontal white line through the central of y axis */
void drawCentreXline() {
  stroke(255);                                               /* sets the color of the following line to be drawn */
  line(0, height/2, width, height/2);                        /* draws a horizontal line through the center of y axis */
}