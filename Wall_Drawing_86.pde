/*Wall Drawing #86 (1971)
Ten thousand lines about 10 inches (25 cm) long, 
covering the wall evenly.
*/

void setup() {
  //size(2624,2624);
  size(656,656);
  smooth();
  background(255);
  stroke(0,50);
  strokeWeight(.5);
    int x=0;
 while (x<10000){
   int initx = int(random(0, width));
   int inity = int(random(0, height));
   int movex = initx + int(random(-width/12,width/12));
   int movey = inity + int(random(-height/12,height/12));
   line(initx, inity, movex, movey);
   x++;
 }
 
}


void mouseClicked(){
  
  save("Wall_Drawing_86_temp.png");
}


  