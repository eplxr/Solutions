/*Wall Drawings # 154,159,160,164 (1973)
154: Drawing with a 96-inch (240 cm) black outlined 
square and a 72-inch (180 cm) red line. A horizontal
line from the midpoint of the left side towards the middle 
of the right side. 
159: A black outlined square with a 
red diagonal line from the lower left corner toward 
the upper right corner; and another red line from the 
lower right corner to the upper left. 
160: A black outlined square with a red diagonal line 
centered on the axis between the upper left and lower 
right corners and another red diagonal line centered 
on the axis between the lower left and upper right corners. 
164: A black outlined square with a red horizontal line 
centered on the axis between the midpoint of the left 
side and the midpoint of the right side and a red diagonal
line centered on the axis between the lower left and upper
right corners.*/

void setup() {
  size(2624,2624);
  //size(656,656);
  //smooth();
  strokeCap(SQUARE);
  background(255);
  stroke(0);
  strokeWeight(7.2);
  rect(width*.05, height*.05, width*.425, height*.425);//154 box
  rect(width*.525, height*.05, width*.425, height*.425);//159 box
  rect(width*.05, height*.525, width*.425, height*.425);//160 box
  rect(width*.525, height*.525, width*.425, height*.425);//164 box
  stroke(220,20,20);
  strokeWeight(8.8);
  line(width*.05,height*.262,width*.4,height*.262);//154 line
  line(width*.56, height*.45, width*.85, height*.13);//159 line
  line(width*.56,height*.09, width*.89, height*.4);//159 line
  line(width*.052,height*.948,width*.26,height*.73);//160 line
  line(width*.473,height*.948,width*.27, height*.73);//160 line
  line(width*.6, height*.737,width*.9,height*.737);//164 line
  line(width*.625,height*.85,width*.8, height*.675);//164 line

}

void draw() {
}

void mouseClicked(){
  
  save("Wall_Drawing_154_temp.png");
}