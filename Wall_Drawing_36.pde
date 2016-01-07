//Wall Drawing No. 36
//On one wall, intersecting symmetrical bands of parallel
//lines 36" wide, in four directions and colors

void setup() {
  size(2624,2624);
  background(50);
  noFill();
  smooth();
  stroke(100);
  strokeWeight(3.2);
  
  }
  


void draw() {
  
  //horizontal lines
stroke (#00CC00);

  for (int a=0; a<=height; a=a+28){
    line(1040,0+a,width-1040,0+a);
  }
  //vertical lines
stroke (#009999);

  for (int a=0; a<=height; a=a+28){
    line(0+a,1040,0+a,height-1040);
  }
stroke (#FFFF00);
  //diagonal 
  strokeWeight(1.4);
  for (int a=-200; a<=height; a=a+20){
    line(0+a,height-400-a,400+a,height-a);
  }
stroke(#FF0000);
    for (int a=-200; a<=height; a=a+20){
    line(0+a,400+a,400+a,a);
  }
  
  
    save("Wall_Drawing_36_temp.png");
}