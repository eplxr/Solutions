/*Wall Drawing No. 91 (1971)
A six-inch (15 cm) grid covering the wall. Within each square, 
not straight lines from side to side, using red, yellow and blue pencils. 
Each square contains at least one line of each color.*/

float x=width*1.45;
float y=width*1.45;
color[] index = {#E52323, #FAFA1E, #3265FA,#E52323, #FAFA1E, #3265FA,#E52323, #FAFA1E,#3265FA,#E52323, #FAFA1E};


void setup() {
  //size(656,656);
  size(2624,2624);

  rectMode(CORNER);
  background(255);
  noFill();
  smooth();
  stroke(100);
    for (int a=0; a<width;a=a+width/18){
    for(int b=0;b<height;b=b+height/18){
      strokeWeight(.4);
      stroke(100);
      rect(a,b,x,y);  
      drawLine(a,b);

    }
  }
}

void draw() {

  }

void mouseClicked() {
  background(255);
  for (int a=0; a<width;a=a+width/18){
    for(int b=0;b<height;b=b+height/18){
      strokeWeight(.65);
      rect(a,b,x,y);  
      drawLine(a,b);
    }
  }
  
  save("Wall_Drawing_91_temp.png");

}

void drawLine(float a, float b) {
  //create randomness for x values of line
  //max() and min() ensure that line isn't too jerky back and forth 
  

  
  //create random x/y coords for starting point of line

  
      float r1 = random(3,7);
      strokeWeight(2);


      //horizontal
        int j = 8; //jerkiness factor
        float r = random(0,j);  
        float r2 = random(0,j);//(max(r-j,-j),min(r+j,j));
        float r3 = random(0,j);//(max(r2-j,-j),min(r2+j,j));
        //look to see if sum of r variables is too big 
        if (r+r2+r3>(j*2)){
        r3=r3*-1;
        }
      int count =0;
      float nolines = random(1,10);
     
      while (count<nolines){
      
         float x1 = a;
         float y1 = random(b+height/120, b+height/20);
        int shade = int(random(index.length));
        stroke(index[count], 125);
         beginShape();
         vertex(x1,y1);
         vertex(x1+width/54,y1+r);
         vertex(x1+width/27,y1+r2);
         vertex(x1+width/18,y1+r3);
         endShape();
         count= count+1;
      }      
        stroke(100);

    } 
 