//Wall Drawing #16 (1969)
//Bands of lines 12 inches (30 cm) wide, 
//in three directions (vertical, horizontal, diagonal right) intersecting.
//648/648
void setup() {
  size(2624,2624);
  smooth();
  strokeWeight(.7);
  stroke(235);
  }

void draw() {
  background(0,85,165);

  //horizontal lines
  for (int a=0; a<=height; a=a+28){
    line(800,0+a,width-800,0+a);
  }
  //vertical lines
  for (int a=0; a<=height; a=a+28){
    line(0+a,800,0+a,height-800);
  }
//stroke (234,100,34);
  //diagonal 
  for (int a=0; a<=height-800; a=a+20){
    line(0+a,height-800-a,800+a,height-a);
  }
    save("Wall_Drawing_16_temp.png");
}