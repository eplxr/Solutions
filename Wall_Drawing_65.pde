//Wall Drawing #65 (1971)
//Lines not short, not straight, crossing and touching, 
//drawn at random, using four colors, uniformly dispersed with maximum density, 
//covering the entire surface of the wall.

void setup() {
  size(2624,2624);
  //size(656,656);
  //noSmooth();
  background(255);
  strokeWeight(width/500);
  curveTightness(.5);
  noFill();


}

color[] index = {#E52323, #FAFA1E, #3265FA, #A7A1A1};


void draw() {

}

void mouseClicked(){
  int d=0;
    while (d<2500){
    drawLineVert();
    drawLineHor();
    d++;
    }
save("Wall_Drawing_65_temp.png");
}

//declare vert line drawing function
void drawLineVert() {
  int shade = int(random(index.length));
  stroke(index[shade], 85);
  
  float r2, r3, yr, yr2, yr3;

  //create randomness for x values of line
  //max() and min() ensure that line isn't too jerky back and forth 
  float j = width/6.5; //jerkiness factor
  float r = random((min(-j,-30)),max(j,30));
  if (r>0){
     r2 = random(0,min(r+j,j));
     r3 = random(0,min(r2+j,j));
  } else {
       r2 = random(max(r-j,-j),0);
       r3 = random(max(r2-j,-j),0);
  }
  
  //look to see if sum of r variables is too small 
  if ((r+r2+r3<75)||(r+r2+r3>-75)){
    r3=r3*2;
    r2=r2*2;
    r=r*2;
    }
  
  //create random x/y coords for starting point of line
  float x = random(-width, width);
  float xr2 = x + r;
  float xr3 = x + r2;
  float xr4 = x+ r3;
  float y = random (-height, height);

  
  beginShape();
  curveVertex(x,y);
  curveVertex(xr2,y+height/2);
  curveVertex(xr3,y+height/1.5);
  curveVertex(xr4,y+height);
  endShape();
}

//declare horizontalline drawing function
void drawLineHor() {
  int shade = int(random(index.length));
  stroke(index[shade], 85);
  
  float r2, r3, xr, xr2, xr3;

  //create randomness for x values of line
  //max() and min() ensure that line isn't too jerky back and forth 
  float j = width/6.5; //jerkiness factor
  float r = random((min(-j,-30)),max(j,30));
  if (r>0){
     r2 = random(0,min(r+j,j));
     r3 = random(0,min(r2+j,j));
  } else {
       r2 = random(max(r-j,-j),0);
       r3 = random(max(r2-j,-j),0);
  }
  
  //look to see if sum of r variables is too small 
  if ((r+r2+r3<75)||(r+r2+r3>-75)){
    r3=r3*2;
    r2=r2*2;
    r=r*2;
    }
  
  //create random x/y coords for starting point of line
  float y = random(-height, height);
  float yr2 = y + r;
  float yr3 = y + r2;
  float yr4 = y + r3;
  float x = random(-width, width);
  
  beginShape();
  curveVertex(x,y);
  curveVertex(x+height/2,yr2);
  curveVertex(x+height/1.5,yr3);
  curveVertex(x+height,yr4);
  endShape();
}