/*Wall Drawing #289 (1976)
A six-inch (15cm) grid covering each of the four black walls. White lines to points on the grid.
1st wall: 24 lines from the center; 
2nd wall: 12 lines from the midpoint of each of the sides;
3rd wall: 12 lines from each corner; 
4th wall: 24 lines from the center, 12 lines from the midpoint of each of the sides, 12 lines from each corner.
*/

PFont f;

void setup() {
  size(2624,2624);
  //size(656,656);
  smooth();
  background(0);
  stroke(255);
  noFill();
  strokeWeight(3.2);

  
  rect(width*.025,height*.025,width*.45,height*.45); 
  //WALL 1 c=width*.25,height*.25.
  rect(width*.525,height*.025,width*.45,height*.45); 
  //WALL 2 c=width*.75,height*.25. Mids: Left=.525, .25//Top=.75 .025//Right=.975, .25//Bottom=.75, .475
  rect(width*.025,height*.525,width*.45,height*.45); 
  //WALL 3 c=width*.25,height*.75.  Corners: TL=.025,.525//TR=.475,.525//BR=.475,.975//BL=.025,.975 
  rect(width*.525,height*.525,width*.45,height*.45); 
  //WALL 4 c=width*.75,height*.75 Mids: Left=.525, .75//Top=.75,.525//Right=.975, .75//Bottom=.75, .975
  
  strokeWeight(4.8);
  //Wall 1 lines
  int x = 0;
  while (x<24){
  line(width*.25,height*.25,random(width*.03,height*.47),random(width*.03,height*.47));
  x++;
}

  //Wall 2 lines Mids: Left=.525, .25//Top=.75 .025//Right=.975, .25//Bottom=.75, .475

  int x1=0;
  while (x1<12){
    line(width*.525,height*.25,random(width*.53,width*.97),random(height*.03,height*.47));
    line(width*.75,height*.025,random(width*.53,width*.97),random(height*.03,height*.47)); 
    line(width*.975,height*.25,random(width*.53,width*.97),random(height*.03,height*.47));
    line(width*.75,height*.475,random(width*.53,width*.97),random(height*.03,height*.47));
    x1++;
  }
  
//Wall 3 lines Corners: TL=.025,.525//TR=.475,.525//BR=.475,.975//BL=.025,.975 

  int x2=0;
  while (x2<12){
    line(width*.025,height*.525,random(width*.03,width*.47),random(height*.53,height*.97));
    line(width*.475,height*.525,random(width*.03,width*.47),random(height*.53,height*.97)); 
    line(width*.475,height*.975,random(width*.03,width*.47),random(height*.53,height*.97));
    line(width*.025,height*.975,random(width*.03,width*.47),random(height*.53,height*.97));
    x2++;
  }
  
//Wall 4 lines c=width*.75,height*.75 Mids: Left=.525, .75//Top=.75,.525//Right=.975, .75//Bottom=.75, .975

  int x3=0;
  while (x3<24){
  line(width*.75,height*.75,random(width*.53,height*.97),random(width*.53,height*.97));
  x3++;}

  int x4=0;
  
  while (x4<12){
    line(width*.525,height*.75,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.75,height*.525,random(width*.53,width*.97),random(height*.53,height*.97)); 
    line(width*.975,height*.75,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.75,height*.975,random(width*.53,width*.97),random(height*.53,height*.97));
    x4++;
  }
  
    int x5=0;
  while (x5<12){
    line(width*.525,height*.525,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.975,height*.525,random(width*.53,width*.97),random(height*.53,height*.97)); 
    line(width*.975,height*.975,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.525,height*.975,random(width*.53,width*.97),random(height*.53,height*.97));
    x5++;
  }
}

void draw() {
}

void mouseClicked(){
  background(0);
    strokeWeight(3.2);

  
  rect(width*.025,height*.025,width*.45,height*.45); 
  //WALL 1 c=width*.25,height*.25.
  rect(width*.525,height*.025,width*.45,height*.45); 
  //WALL 2 c=width*.75,height*.25. Mids: Left=.525, .25//Top=.75 .025//Right=.975, .25//Bottom=.75, .475
  rect(width*.025,height*.525,width*.45,height*.45); 
  //WALL 3 c=width*.25,height*.75.  Corners: TL=.025,.525//TR=.475,.525//BR=.475,.975//BL=.025,.975 
  rect(width*.525,height*.525,width*.45,height*.45); 
  //WALL 4 c=width*.75,height*.75 Mids: Left=.525, .75//Top=.75,.525//Right=.975, .75//Bottom=.75, .975
  
  strokeWeight(4.8);
  //Wall 1 lines
  int x = 0;
  while (x<24){
  line(width*.25,height*.25,random(width*.03,height*.47),random(width*.03,height*.47));
  x++;
}

  //Wall 2 lines Mids: Left=.525, .25//Top=.75 .025//Right=.975, .25//Bottom=.75, .475

  int x1=0;
  while (x1<12){
    line(width*.525,height*.25,random(width*.53,width*.97),random(height*.03,height*.47));
    line(width*.75,height*.025,random(width*.53,width*.97),random(height*.03,height*.47)); 
    line(width*.975,height*.25,random(width*.53,width*.97),random(height*.03,height*.47));
    line(width*.75,height*.475,random(width*.53,width*.97),random(height*.03,height*.47));
    x1++;
  }
  
//Wall 3 lines Corners: TL=.025,.525//TR=.475,.525//BR=.475,.975//BL=.025,.975 

  int x2=0;
  while (x2<12){
    line(width*.025,height*.525,random(width*.03,width*.47),random(height*.53,height*.97));
    line(width*.475,height*.525,random(width*.03,width*.47),random(height*.53,height*.97)); 
    line(width*.475,height*.975,random(width*.03,width*.47),random(height*.53,height*.97));
    line(width*.025,height*.975,random(width*.03,width*.47),random(height*.53,height*.97));
    x2++;
  }
  
//Wall 4 lines c=width*.75,height*.75 Mids: Left=.525, .75//Top=.75,.525//Right=.975, .75//Bottom=.75, .975

  int x3=0;
  while (x3<24){
  line(width*.75,height*.75,random(width*.53,height*.97),random(width*.53,height*.97));
  x3++;}

  int x4=0;
  
  while (x4<12){
    line(width*.525,height*.75,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.75,height*.525,random(width*.53,width*.97),random(height*.53,height*.97)); 
    line(width*.975,height*.75,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.75,height*.975,random(width*.53,width*.97),random(height*.53,height*.97));
    x4++;
  }
  
    int x5=0;
  while (x5<12){
    line(width*.525,height*.525,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.975,height*.525,random(width*.53,width*.97),random(height*.53,height*.97)); 
    line(width*.975,height*.975,random(width*.53,width*.97),random(height*.53,height*.97));
    line(width*.525,height*.975,random(width*.53,width*.97),random(height*.53,height*.97));
    x5++;
  }
  save("Wall_Drawing_289_temp.png");
}