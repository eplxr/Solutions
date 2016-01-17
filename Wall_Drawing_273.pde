/*Wall Drawing #273 (1975)
Lines to points on a grid. A six-inch (15 cm) grid covering the wall. 
Lines from the corners, sides, and center of the walls to random points on the grid. 
Composite (seventh wall): red lines from the midpoints of four sides, blue lines from four corners, 
yellow lines from the center.
*/
  float gridsize=656/29;

void setup() {
  size(2624,2624);
  //size(656,656);
  smooth();
  background(100);
  fill(170);
  stroke(200,250);
  strokeWeight(.8);
  rectMode(CORNER);
  
  
  for (float a=0;a<width;a=a+gridsize){
    for (float b=0;b<height;b=b+gridsize){
      rect(a,b,gridsize,gridsize);
      
    }
  }
  
    strokeWeight(7.2);

    float linelength =width;
//blue lines from corner
    stroke(30,30,225,200);
    
 for (int a=0;a<4;a++){
  line(0,0,width-random(linelength), height-random(linelength));
 }
 for (int a=0;a<4;a++){
  line(0,height,width-random(linelength), height-random(linelength));
 }
 for (int a=0;a<4;a++){
  line(width,0,width-random(linelength), height-random(linelength));
 }
 for (int a=0;a<4;a++){
  line(width,height,width-random(linelength), height-random(linelength));
 }
  //red lines from midpoints
    
stroke(225,30,30,200);
    
 for (int a=0;a<4;a++){
  line(0,height/2,width-random(linelength), height-random(linelength));
 }
 for (int a=0;a<4;a++){
  line(width/2,0,width-random(linelength), height-random(linelength));
 }
 for (int a=0;a<4;a++){
  line(width,height/2,width-random(linelength), height-random(linelength));
 }
 for (int a=0;a<4;a++){
  line(width/2,height,width-random(linelength), height-random(linelength));
 }
 
  //yellow lines from center
    
stroke(250,250,0,200);
    
 for (int a=0;a<12;a++){
  line(width/2,height/2,width-random(linelength), height-random(linelength));
 }
  
  
  
}

void draw() {

}

void mouseClicked(){

  save("Wall_Drawing_273_temp.png");
}