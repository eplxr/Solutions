//Wall Drawing No. 26
//"A one-inch grid covering a 36 inch square. 
//Within each one-inch square, there is a line in 
//one of the four directions."


void setup() {
  //size(720,720);
  size(2624,2624);

  rectMode(CORNER);
  background(255);
  noFill();
  smooth();
  stroke(100);
    for (int a=0; a<width;a=a+72){
    for(int b=0;b<height;b=b+72){
       strokeWeight(.72);

      rect(a,b,x,y);   
    float r = random(1,5);
      strokeWeight(2.8);

    if (r<1.8){
      line(a,b+36,a+72,b+36);
    } else if (r<2.6){
      line(a+36,b,a+36,b+72);
    } else if (r<3.8){
      line(a+72,b,a,b+72);
    } else {
      line(a,b,a+72,b+72);
    }
   }
    }
  }
  

int x=72;
int y=72;



void draw() {
  }

void mouseClicked() {
background(255);

  for (int a=0; a<width;a=a+72){
    for(int b=0;b<height;b=b+72){
       strokeWeight(.72);

      rect(a,b,x,y);   
    float r = random(1,5);
      strokeWeight(2.8);

    if (r<1.8){
      line(a,b+36,a+72,b+36);
    } else if (r<2.6){
      line(a+36,b,a+36,b+72);
    } else if (r<3.8){
      line(a+72,b,a,b+72);
    } else {
      line(a,b,a+72,b+72);
    }
   }
     
  }
          save("Wall_Drawing_26_temp.png");

}