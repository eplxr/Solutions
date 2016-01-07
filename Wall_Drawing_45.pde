//Wall Drawing #45 (1970)
//Straight lines 10" (25 cm) long, not touching, 
//covering the wall evenly.

void setup() {
  size(2624,2624);
  background(55, 100, 255);
  noFill();
  smooth();
  stroke(255, 155, 3);
  strokeWeight(4);

  }
  
void draw() {
}


void mouseClicked(){
  background(55, 100, 255);

 for (int a=0; a<height;a=a+240){
    for(int b=0;b<width;b=b+240){
      
      float c = random(-1,1);
      float fifty = random(0,200);
      if (c>0) {
        c=1;
        }  else {
          c=-1;
      }

      float x = c*fifty;
      float d = random(-1,1);
      if (d>0) {
        d=1;
        }  else {
          d=-1;
      }
  
      float y = d*(200-fifty);
  
      line(a,b,a+x,b+y);
      print(fifty);
    }
  }
  save("Wall_Drawing_45_temp_big.png");
}