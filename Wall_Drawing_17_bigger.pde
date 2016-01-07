//Wall Drawing #17 (1969)
//Four-part drawing with a different line direction in each part.

void setup() {
  size(2624,2624);
  smooth();
  strokeWeight(1.5);
  stroke(100);
  background(255);
  
//first part
  for (int a=0; a<=height; a=a+32){
    line(80,0+a,600,0+a);
  }

//second part
  for (int a=0; a<=600; a=a+32){
    line(2040+a,0,2040+a,height);
  }
    
//third part
  
  for (int a=0; a<=580; a=a+32){
    line(1360,0+a,1360+a,0);
  }  
  
  for (int a=8; a<=580; a=a+32){
    line(1560,0+a,1360+a,600);
  }
  
    for (int a=0; a<=580; a=a+32){
    line(1360,150+a,1360+a,600);
  }

    for (int a=8; a<=580; a=a+32){
    line(1560,150+a,1360+a,1200);
  }
  
    for (int a=0; a<=580; a=a+32){
    line(1360,300+a,1360+a,1200);
  }
  
    for (int a=8; a<=580; a=a+32){
    line(1560,300+a,1360+a,1800);
  }
  
  for (int a=0; a<=580; a=a+32){
    line(1360,450+a,1360+a,1800);
  }
  
  for (int a=8; a<=580; a=a+32){
    line(1560,450+a,340+a,2400);
  }
  
  for (int a=0; a<=580; a=a+32){
    line(1360,600+a,1360+a,2400);
  }     
  
  for (int a=8; a<=580; a=a+32){
    line(1360,600+a,1360+a,3000);
  }
    
//fourth part
  
  for (int a=8; a<=600; a=a+32){
    line(680+a,0,1280,600-a);
  }  
  
  for (int a=20; a<=600; a=a+32){
    line(680,0+a,1280-a,600);
  }

  for (int a=8; a<=600; a=a+32){
    line(680+a,600,1280, 1200-a);
  }  
  
  for (int a=20; a<=600; a=a+32){
    line(680,600+a,1280-a,1200);
  }      
    
  for (int a=8; a<=600; a=a+32){
    line(680+a,1200,1280,1800-a);
  }  
  
  for (int a=20; a<=600; a=a+32){
    line(680,1200+a,1280-a,1800);
  }      
  
  for (int a=8; a<=600; a=a+32){
    line(680+a,1800,1280,2400-a);
  }
  
  for (int a=20; a<=600; a=a+32){
    line(680,1800+a,1280-a,2400);
  }      

  for (int a=8; a<=600; a=a+32){
    line(680+a,2400,1280,3000-a);
  }  
  
  for (int a=20; a<=600; a=a+32){
    line(680,2400+a,1280-a,3000);
  }      
        save("Wall_Drawing_17_temp.png");

  }

void draw() {

    
}