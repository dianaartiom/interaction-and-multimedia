
/* In this file we are going to see how to implement a polygon using shape */

/* setup fun runs once. Defines initial environment properties */
void setup() {

}

/*  only useful when it's absolutely necessary to define the parameters to size() with a variable */
void settings() {
    size(400, 400);
}

/* continuous loop */
void draw() {
  stroke(155);                                     /* sets the color of the border to gray 155 */ 
  polygon(6, 100);                                 /* calls the polygon function with 6 edges and radius 100 */
}

/* polygon function takes two parameters: number of edges and radius*/
/* it computes the vertices position and draws the shape*/
void polygon(int n, int r) {
    float angle = TWO_PI/n;                        /* angle - the angle used to compute x and y coords */  
    float v[][] = new float [n+2][2];              /* array storing the x and y coordinates for vertices */ 
    int count = 0;                                 /* counter variable to increment the position in 2D array */
    
    for (float i = 0; i < TWO_PI + angle; i+=angle) {  /* loop until a full circle is made + angle */
        v[count][0] = width/2 + r * cos(i);            /* x coordinate of the vertex */
        v[count][1] = height/2 + r * sin(i);           /* y coordinate of the vertex */
        count++;
    }
    
    drawShape(v, n);                                    /* creates the sape */
    
}

/* drafShape functino takes two params : the 2D array and the nr of edges */
/* it creates the polygon shape, using given vertices */
void drawShape(float[][] v, int n) {
    beginShape();                    /* beginShape - function for starting shape forming */
    for(int i = 0; i < n; i++) {
      vertex(v[i][0], v[i][1]);      /* vertex func takes two params - x and y coordintes of the to be drawn polygon vertex  */
    }
    endShape();                      /* endShape - function for finishing shape */
}