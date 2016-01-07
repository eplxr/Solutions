//Wall Drawing #56 (1970)
//"A square is divided horizontally and vertically into four equal parts, 
//each with lines in four directions superimposed progressively."

void setup() {
  size(2624,2624);
  //size(700,700);
  background(#ffffff);
  smooth();
  strokeWeight(6);
  stroke(100,100,100);


    //all vertical  
    for (int a=0; a<width; a=a+60){line(a,0,a,height);}
    
    //horizontal except top left
    for (int a=-2; a<height; a=a+60){line(width/2+1.5,a,width,a);}
    for (int a=0; a<width/2; a=a+60){line(0,height/2+a,width/2,height/2+a);}
    
    
    
    //diagonal bottom left/top right lines on bottom right
    for (int a = 0; a<=width/2; a=a+(width/30)){
      line(width/2+a,height,width,height/2+a);
      line(width/2+2,height-a,width-a,height/2);
    }

 
//diagonal top left/bottom right lines across bottom
  for (int a = 20; a<=width/2; a=a+(height/30)){
    line(0,height-a,a,height);
    line(a,height/2,(width/2),(height-a));
    line(width/2,height-a,width/2+a,height);
    line(width/2+a,height/2,(width),(height-a));
  }
  save("Wall_Drawing_56_temp.png");

}

void draw() {
}

void mouseClicked(){
  
}