//Wall Drawing #87 (1971)
/*A square divided horizontally and vertically into four equal parts,
each with lines and colors in four directions superimposed progressively.*/

void setup() {
  size(2624,2624);
  //size(664,664);
  background(255,255,255,100);
  smooth();
  strokeWeight(4.5);
  
  int increment = width/50;
  int incrementdiag = width/50;


    //all vertical  
    stroke(200,30,30, 150);
    for (int a=0; a<width; a=a+increment){line(a,0,a,height);}

    
    stroke(250,250,0, 150);

    //horizontal except top left
    for (int a=0; a<height; a=a+increment){line(width/2,a,width,a);}
    for (int a=-2; a<width/2; a=a+increment){line(0,height/2+a,width/2,height/2+a);}
    
    
   stroke(5,10,225, 100);

    //diagonal bottom left/top right lines on bottom right
    for (int a = 0; a<=width/2; a=a+incrementdiag){
      line(width/2+a+(width/50),height,width,height/2+a+width/50);
      line(width/2,height-a,width-a,height/2);
    }

 
//diagonal top left/bottom right lines across bottom
   stroke(5,10,25, 100);

  for (int a = 20; a<=width/2; a=a+incrementdiag){
    line(0,height-a,a,height);
    line(a-width/150,height/2,(width/2),(height-a+width/150));
    line(width/2,height-a,width/2+a,height);
    line(width/2+a-width/150,height/2,(width),(height-a+width/150));
  }
  save("Wall_Drawing_56_temp.png");

}

void draw() {
}

void mouseClicked(){
  
}