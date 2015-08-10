

void randrender(){
 
 int Rx= (int) random(4);

  switch (Rx){
    case (0): 
      line(0,0,10,0) ;
      break;
    case (1): 
      line(10,0,10,10);
      break;
    case (2): 
      line(10,10,0,10);
      break;
     case (3):
      line(0,10,0,0);
     break;
  }
}


void drawrect(){
  
   randrender();
  
//for(int i=0; i<2; i++){
//  randrender();
//  }
}

void setup(){
  size(430,430);
  
  for( int j=0; j<40;j++){
    for( int i=0; i<40;i++){
     pushMatrix();
     translate(10*i+15,j*10+15); 
     drawrect();
     popMatrix();
    }
  }
}

