/*Wall Drawing No. 88 (1971)
A 6-inch (15 cm) grid covering the wall. Within each square, 
not straight lines in either of four directions. 
Only one direction in each square but as many as desired, 
and at least one line in each square.*/

float x=width/2.75;
float y=width/2.75;


void setup() {
  size(656,656);
  //size(2624,2624);

  rectMode(CORNER);
  background(255);
  noFill();
  smooth();
  stroke(100);
    for (int a=0; a<width;a=a+width/18){
    for(int b=0;b<height;b=b+height/18){
      strokeWeight(.18);
      rect(a,b,x,y);  
      drawLine(a,b);
    }
  }
}

void draw() {
  }

void mouseClicked() {

}

void drawLine(float a, float b) {
  //create randomness for x values of line
  //max() and min() ensure that line isn't too jerky back and forth 
  
  int j = 8; //jerkiness factor
  float r = random(0,j);  
  float r2 = random(0,j);//(max(r-j,-j),min(r+j,j));
  float r3 = random(0,j);//(max(r2-j,-j),min(r2+j,j));
  //look to see if sum of r variables is too big 
  if (r+r2+r3>(j*2)){
    r3=r3*-1;
    }
  
  //create random x/y coords for starting point of line
  float x = random(a+width/90, a+width/45);
  float y = b;
  float xr2 = x + r;
  float xr3 = x + r2;
  
      float r1 = random(1,5);
      strokeWeight(.7);

    if (r1>3){
           // line(a+width/72,b,a+width/72,b+width/36);//vertical       

       beginShape();
        vertex(x,y);
        vertex(x+r,y+height/54);
        vertex(x+r2,y+height/27);
        vertex(x+r3,y+height/18);
        endShape();
    } 
    
    else if (r1>0){
      //line(a,random(b, b+height/36),a+width/36,random(b+height/36-width/150,b+width/36));//horizontal

       beginShape();
        vertex(y,x);
        vertex(y+height/54,x+r);
        vertex(y+height/27,x+r2);
        vertex(y+height/18,x+r3);
        endShape();
        
        /*THIS NEEDS TO BE FINE TUNED--DRAWING IN SAME BOX AS HORIZONTAL--MAYBE OFF.  
        SHOULD DO SEPARATELY VARIABLES FOR EACH LINE TYPE.  ALSO REPEATING LINES IS PROBLEMATIC.
        */

    } 
/*    
    else if (r1<3.8){
      line(a+width/36,b,a,b+width/36);//diagonal left
    } 
    
    else {
      line(a,b,a+width/36,b+width/36);//diagonal right
    }
  */  

}