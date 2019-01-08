import processing.sound.*;
AudioIn in;

//FYI, you will notice nothing if you test this code.

void setup() {
  size(512,424);
  background(255);   
  
  in = new AudioIn(this, 0);
  //start(amp ->from 0.0 to 1.0, add ->idk and idc, pos ->from -1.0(left) to 1.0(right) );
  in.start();
}

void draw() {
  
}
