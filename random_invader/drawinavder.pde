void shuffle(int [] array) {
  for (int i = array.length - 1; i > 0; i--) {
    int j = floor(random(array.length));
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
  }
}

void drawinvader() {
  int [] rarray = new int [32];
  for (int i=0; i<32; i++) {
    rarray[i]=i;
  }

  shuffle(rarray);
  int pixelcount= int (random(8,24));
  

  rarray=subset(rarray, 0, pixelcount);
  printArray(rarray);

  for (int i=0; i<rarray.length; i++) {
    pushMatrix();
     fill(0);
    translate(Rsize*8, 0 );
    rect( rarray[i]%4*Rsize, floor(rarray[i]/4)*Rsize, Rsize, Rsize);
    scale(-1, 1);
    fill(122);
    rect( rarray[i]%4*Rsize, floor(rarray[i]/4)*Rsize, Rsize, Rsize);
  popMatrix();
}
}

