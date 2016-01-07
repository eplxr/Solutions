/*Wall Drawing #85 (1971)
A wall is divided into four horizontal parts. 
In the top row are four equal divisions, each with lines 
in a different direction. In the second row, six double 
combinations; in the third row, four triple combinations; 
in the bottom row, all four combinations superimposed.
*/

color[] index = {#FA1717, #FA17F7, #630CF2, #0C3FF2, #0CF2E5, #0CF25E, #91F20C, #F2EB0C, #F28B0C, #F22F0C};

//{#E52323, #FAFA1E, #3265FA, #3EC66F};
int shade;

void randcolor(){
    shade = int(random(index.length));
  stroke(index[shade], 75);
}

void setup() {
  size(2624,2624);
  //size(656,656);
  smooth();
  background(255);
  
  //draw frame
  strokeWeight(4);
  stroke(10,10);
  line(0,height*.25,width,height*.25);
  line(0,height*.5,width,height*.5);
  line(0,height*.75,width,height*.75);
  line(width/4,0,width/4,height/4);
  line(width/2,0,width/2, height/4);
  line(width*.75,0,width*.75,height/4);
  
  for (int a=0;a<width+1;a=a+(width/6)){
  line(a,height*.25,a,height*.5);
  }
  line(width/4,height*.5,width/4,height*.75);
  line(width/2,0,height*.5, height*.75);
  line(width*.75,height*.5,width*.75,height*.75);
  
  
   randcolor();
  
  strokeWeight(2.8);
//draw top row lines
  for (int a=0; a<width/4; a=a+width/200){
       line(0,height/4-a,a,height/4);
       line(a-12,0,width/4,height/4-a);
     }
 //diagonal bottom left/top right lines across top right
  randcolor();
    for (int a = 0; a<=width/4; a=a+(width/200)){
      line(width*3/4, a, width*.75+a, 0);
      line(width*3/4+a, height*.25, width, a);
    }
  //vertical lines
  randcolor();
    for (int a=0; a<width/4; a=a+width/230) {
        line(width*.25+a,0,width*.25+a,height/4);  }
  //horizontal lines
  randcolor();
    for (int a=0; a<height/4; a=a+width/230){
      line(width*.5,a,width*.75,a);   }

/*draw second row lines.
Double combos: 1&6: vertical horizontal; 
2:vertical diagonal right
3:horizontal diagonal left
4: horizontal diagonal right
5: vertical diagonal left*/  
    
  //vertical lines
    // a< should be size of space to fill; a+ determines line spacing
    // line(1,2,3,4):1=xcoord of 1st vert line; 2=ycoord to start line, 3=1, 4=ycoord to end line
  //horizontal lines
    // a< should be size of space to fill; a+ determines line spacing
    // line(1,2,3,4):1=xcoord of 1st hor line; 2=ycoord to start line, 3=xcoord to end line, 4=1
//BOX 2-1
randcolor();
    for (int a=0; a<width/6; a=a+width/230) {
      line(a,height/4,a,height/2);}
    for (int a=0; a<height/4; a=a+width/230){
      line(0,height/4+a,width/6,height/4+a);   }
//BOX 2-6
randcolor();
    for (int a=0; a<width/6; a=a+width/230) {
      line(width*5/6+a,height/4,width*5/6+a,height/2);}
    for (int a=0; a<height/4; a=a+width/230){
      line(width*5/6,height/4+a,width,height/4+a);   }
//BOX 2-2: vertical diagonal right
randcolor();
    for (int a=0; a<width/6; a=a+width/230) {
      line(width/6+a,height/4,width/6+a,height/2);}
  //couplet
    for (int a = 0; a<=width/6; a=a+(width/230)){
      line(width/3-a,height/4, width/6, height/2-a);}      
    for (int a = 0; a<=width/6; a=a+(width/230)){
      line(width/3,height/4+a, width/6+a, height/2);}   
      
//BOX 2-3:horizontal diagonal left
randcolor();
    for (int a=0; a<height/4; a=a+width/230){
      line(width*2/6,height/4+a,width/2,height/4+a); }
 //couplet
    for (int a = 0; a<=width/6; a=a+(height/230)){
      line(width/3,height/4+a,width/2-a,height/2);}
    for (int a = 0; a<=width/6; a=a+(height/230)){
      line(width/3+a,height/4,width/2,height/2-a);}

//BOX 2-4: horizontal diagonal right
randcolor();
    for (int a=0; a<height/4; a=a+width/230){
      line(width/3,height/4+a,width*.67,height/4+a); }
  //couplet
    for (int a = 0; a<=width/6; a=a+(width/230)){
      line(width*.67-a,height/4, width/2, height/2-a);}      
    for (int a = 0; a<=width/6; a=a+(width/230)){
      line(width*.67,height/4+a, width/2+a, height/2);}   

//BOX 2-5: vertical diagonal left
randcolor();
   for (int a=0; a<width/6; a=a+width/230) {
      line(width*4/6+a,height/4,width*4/6+a,height/2);}
 //couplet
    for (int a = 0; a<=width/6; a=a+(height/230)){
      line(width*2/3,height/4+a,width*.83-a,height/2);}
    for (int a = 0; a<=width/6; a=a+(height/230)){
      line(width*2/3+a,height/4,width*.83,height/2-a);}

/*draw third row lines.
1: VH D-right 
2: D-left H D-Right
3: D-Right V H
4: VH D-left*/ 

//BOX 3-1: VH D-right 
randcolor();
    for (int a=0; a<width/4; a=a+width/230) {
      line(a,height/2,a,height*.75);}
    for (int a=0; a<height/4; a=a+width/230){
      line(0,height/2+a,width/4,height/2+a);   }

    for (int a = 0; a<=width/4; a=a+(width/200)){
      line(0, height*.5+a, a, height*.5);
      line(a, height*.75, width/4, height*.5+a); }

//BOX 3-2: D-left H V
randcolor();
    for (int a=0; a<width/4; a=a+width/230) {
     line(width/4+a,height/2,width/4+a,height*.75);}
    for (int a=0; a<height/4; a=a+width/230){
      line(width/4,height/2+a,width/2,height/2+a);   }

    for (int a=0; a<width/4; a=a+width/230) {
      line(width*.25+a,height*.5,width*.5,height*.75-a);
      line(width*.25,height*.5+a,width*.5-a, height*.75);}

//BOX 3-3: D-Right  H D-left
randcolor();
    for (int a=0; a<height/4; a=a+width/230){
      line(width/2,height/2+a,width*.75,height/2+a);   }

    for (int a = 0; a<=width/4; a=a+(width/200)){
      line(width/2, height*.5+a, width/2+a, height*.5);
      line(width/2+a, height*.75, width*3/4, height*.5+a); }
      
    for (int a=0; a<width/4; a=a+width/230) {
      line(width*.5+a,height*.5,width*.75,height*.75-a);
      line(width*.5,height*.5+a,width*.75-a, height*.75);}

//BOX 3-4: VH D-left
randcolor();
    for (int a=0; a<width/4; a=a+width/230) {
      line(width*.75+a,height/2,width*.75+a,height*.75);}
    for (int a=0; a<height/4; a=a+width/230){
      line(width*.75,height/2+a,width,height/2+a);}
      
    for (int a=0; a<width/4; a=a+width/230) {
      line(width*.75+a,height*.5,width,height*.75-a);}
    for (int a=0; a<height/4; a=a+width/230){
      line(width*.75,height*.5+a,width-a, height*.75);}

// BOX 4: All combinations across the bottom quadrant
randcolor();
    for (int a=0; a<width; a=a+width/230) {
      line(a,height*.75,a,height);}
    for (int a=0; a<height; a=a+width/230){
      line(0,height*.75+a,width,height*.75+a);}
      
    for (int a=1; a<width*2; a=a+width/230){
      line(0,height*.75+a,width-a,height);}
    for (int a=0; a<width/4; a=a+width/230){
      line(0+a, height*.75,width, height-a);}

    for (int a=0; a<width*2; a=a+width/230){
      line(0,height*.75+a,a,height*.75);}
   
    for (int a=0; a<width/4; a=a+width/230){
      line(0+a, height,width, height*.75+a);}

 
 }

 



void draw() {
}

void mouseClicked(){
  
  save("Wall_Drawing_85_temp.png");
}