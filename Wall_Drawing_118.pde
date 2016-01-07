/*Wall Drawing #118 (1971)
On a wall surface, any continuous stretch of wall, 
using a hard pencil, place fifty points at random. 
The points should be evenly distributed over the 
area of the wall. All of the points should be connected 
by straight lines.*/

float[] xcoord = new float[50];
float[] ycoord = new float[50];

void setup() {
  //size(2624,2624);
  size(656,656);
  background(255);
  colorMode(HSB, 360, 100, 100);
  stroke(75);
  strokeWeight(.45);
  
  for (int i=0; i<xcoord.length; i++){
    xcoord[i]=random(width);
  }  
  for (int i=0; i<ycoord.length; i++){
    ycoord[i]=random(height);
  }
  
    for (int i=0; i<xcoord.length; i++){
      for (int j=49; j>-1; j--){
      line(xcoord[i],ycoord[i],xcoord[j],ycoord[j]);
    }
  }  
}

void draw() {
background(360,0,100);
  for (int i=0; i<xcoord.length; i++){
    xcoord[i]=random(100,width-100);
  }  
  for (int i=0; i<ycoord.length; i++){
    ycoord[i]=random(100, height-100);
  }
  
    for (int i=0; i<xcoord.length; i++){
      for (int j=49; j>-1; j--){
        stroke(random(0,360),100,random(70,100));
      line(xcoord[i],ycoord[i],xcoord[j],ycoord[j]);
    }
  }  
  
}

void mouseClicked(){
  background(360,0,100);
  for (int i=0; i<xcoord.length; i++){
    xcoord[i]=random(width);
  }  
  for (int i=0; i<ycoord.length; i++){
    ycoord[i]=random(height);
  }
  
    for (int i=0; i<xcoord.length; i++){
      for (int j=49; j>-1; j--){
        stroke(random(0,360),100,random(70,100));
      line(xcoord[i],ycoord[i],xcoord[j],ycoord[j]);
    }
  }  
    // save("Wall_Drawing_118_temp.png");

}
  