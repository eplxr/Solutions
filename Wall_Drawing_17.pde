//Wall Drawing #17 (1969)
//Four-part drawing with a different line direction in each part.

void setup() {
  size(684,684);
  smooth();
  strokeWeight(.4);
  stroke(100);
  background(255);
  
//first part
  for (int a=0; a<=height; a=a+8){
    line(20,0+a,150,0+a);
  }

//second part
  for (int a=0; a<=150; a=a+8){
    line(510+a,0,510+a,height);
  }
    
//third part
  
  for (int a=0; a<=145; a=a+8){
    line(340,0+a,340+a,0);
  }  
  
  for (int a=2; a<=145; a=a+8){
    line(490,0+a,340+a,150);
  }
  
    for (int a=0; a<=145; a=a+8){
    line(340,150+a,340+a,150);
  }

    for (int a=2; a<=145; a=a+8){
    line(490,150+a,340+a,300);
  }
  
    for (int a=0; a<=145; a=a+8){
    line(340,300+a,340+a,300);
  }
  
    for (int a=2; a<=145; a=a+8){
    line(490,300+a,340+a,450);
  }
  
  for (int a=0; a<=145; a=a+8){
    line(340,450+a,340+a,450);
  }
  
  for (int a=2; a<=145; a=a+8){
    line(490,450+a,340+a,600);
  }
  
  for (int a=0; a<=145; a=a+8){
    line(340,600+a,340+a,600);
  }     
  
  for (int a=2; a<=145; a=a+8){
    line(490,600+a,340+a,750);
  }
    
//fourth part
  
  for (int a=2; a<=150; a=a+8){
    line(170+a,0,320,150-a);
  }  
  
  for (int a=5; a<=150; a=a+8){
    line(170,0+a,320-a,150);
  }

  for (int a=2; a<=150; a=a+8){
    line(170+a,150,320, 300-a);
  }  
  
  for (int a=5; a<=150; a=a+8){
    line(170,150+a,320-a,300);
  }      
    
  for (int a=2; a<=150; a=a+8){
    line(170+a,300,320,450-a);
  }  
  
  for (int a=5; a<=150; a=a+8){
    line(170,300+a,320-a,450);
  }      
  
  for (int a=2; a<=150; a=a+8){
    line(170+a,450,320,600-a);
  }
  
  for (int a=5; a<=150; a=a+8){
    line(170,450+a,320-a,600);
  }      

  for (int a=2; a<=150; a=a+8){
    line(170+a,600,320,750-a);
  }  
  
  for (int a=5; a<=150; a=a+8){
    line(170,600+a,320-a,750);
  }      
        save("Wall_Drawing_17_temp.png");

  }

void draw() {

    
}