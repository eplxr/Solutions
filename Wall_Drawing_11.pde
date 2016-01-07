//"A wall divided horizontally and vertically into four equal parts.
//Within each part, three of the four kinds of lines are superimposed."

void setup() {
  size(2624,2624);
  float RATIO=2624/648;
  noFill();
  smooth();
  stroke(18);
  frameRate(3);
  
  }

int x1=0;
int y1=0;
int d1=0;
int d1a=0;

void draw() {
  background(255);
  strokeWeight(2.4);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  
stroke(0, 0, 255);
  strokeWeight(1);
 //   int index = int(random(c64.length));
 //   stroke(c64[index]); 
  for (int a = 0; a<=width; a=a+(width/72)){
    line(x1+a,0,x1+a,height);
  }
  for (int a = 0; a<=height; a=a+(height/72)){
    line(0,y1+a,width,y1+a);
  } 
  
//upper left diagonal
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line(d1+a,0,0,d1+a);
  }   
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line((width/2),a,a,(height/2));
  }   

//upper right diagonal
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line((width-a),0,width,a);
  }   
  
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line((width/2),a,width-a,(height/2));
  }   

//lower left diagonal
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line(0,height-a,0+a,height);
  }   
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line(0+a,height/2, width/2, height-a);
  }   
    
//lower right diagonal
  for (int a = -55; a<=width/2; a=a+(width/36)){
    line((width/2)+a,height/2,width/2,(height/2)+a);
  }   
  for (int a = 0; a<=width/2; a=a+(width/36)){
    line((width/2)+a,height,width,(height/2)+a);
  }   
      
  save("Wall_Drawing_11_temp.png");
}