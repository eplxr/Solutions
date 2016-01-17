/*Wall Drawing #280 (1975)
A six-inch (15cm) grid covering a yellow wall. Blue lines from the four corners, 
red lines from the midpoints of the four sides, white lines from the center to points 
on the grid. Red, blue and white crayon, black pencil grid, yellow wall.
*/
  float gridsize=2624/29;

void setup() {
  size(2624,2624);
  //size(656,656);
  smooth();
  background(255,255,0);
  fill(240,240,0,100);
  stroke(200,250);
  strokeWeight(.8);
  rectMode(CORNER);
  
  
  for (float a=0;a<width;a=a+gridsize){
    for (float b=0;b<height;b=b+gridsize){
      rect(a,b,gridsize,gridsize);
      
    }
  }
  
    strokeWeight(10);

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
 
  //white lines from center
    
stroke(250,250,255);
    
 for (int a=0;a<12;a++){
  line(width/2,height/2,width-random(linelength), height-random(linelength));
 }
  
  
  
}

void draw() {

}

void mouseClicked(){

  save("Wall_Drawing_280_temp.png");
}