/* this program draws a piechart */

/* angles according to each section percentage */
float[] angles = {25.0, 45.0, 5.0, 15.0, 10.0};


/* setup function - runs once at the initialization of the program */
void setup() {
  size(500, 500);                           /* set the canvas size: width = 500, height = 500 */
  stroke(0);                                /* border of the piechart will be black */
  strokeWeight(1);                          /* set the border to have 1px thicknes */
  noLoop();                                 /* Run once and stop */
  angles = computeAngles(angles);
}

/* continuous loop */
void draw() {
  background(210);                          /* set the background color gray 210 */
  pieChart(width, angles);                  /* call the pieChart drawing function */
}

/* function to draw the pie chart takes two parameters: 
the diameter, ant the array containing angles of each section*/
void pieChart(float diameter, float[] data) {
  float lastAngle = 0;                                                                        /* lastAngle - from where to draw*/
  for (int i = 0; i < data.length; i++) {    
    fill( random(255), random(255), random(255), 255);                                        /*random colors for each section */
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));      /* draw the arc area */
    lastAngle += radians(angles[i]);                                                          /* update lastAngle - to be used for the next drawn arc */
  }    
}


float[] computeAngles(float a[]) {
  for(int i = 0; i < a.length; i++) {
    a[i] = a[i] * 360 / 100;
  }
  return a;
}