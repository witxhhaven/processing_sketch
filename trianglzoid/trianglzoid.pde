/* Press up and down keys to increase or 
decrease the number of sides*/

float Pradius , Pangle;
float P1x,P1y,P2x, P2y; 
int sides;
float Pside=70;

void setup(){
size(400,400);
sides=3;
fill(0);
noStroke();
}


void Tridraw (){
  int midx,midy;
  colorMode(HSB,TWO_PI);
  Pangle= TWO_PI/sides;
  midx=width/2;
  midy=height/2;
  Pside=dist(midx,midy,mouseX,mouseY)*0.75;
  float Mangle= atan2( mouseX-midx,mouseY-midy); 
  background(TWO_PI);
  
  for(int i=0; i<=sides; i++){
    
   P1x= sin(Pangle*(i-1))*Pside+midx;
   P1y= cos(Pangle*(i-1))*Pside+midy;
   P2x= sin(Pangle*i )*Pside+midx;
   P2y= cos(Pangle*i )*Pside+midy;
   fill(Pangle*i,100,100);
  triangle(midx,midy,P1x,P1y,P2x,P2y);
  }
}


void keyPressed() {
if (key == CODED) {
    if ((keyCode == UP) &&(sides<25)){
      sides++;
    } else if ((keyCode == DOWN)&& (sides>3)) {
      sides--;
    } 
  }
}



void draw(){
  
 Tridraw(); 
}


