import processing.sound.*;
AudioIn in;

//The audio recorded by the mic should play

void setup() {
  size(512,424);
  background(255);   
  
  in = new AudioIn(this, 0);
  //play(amp ->from 0.0 to 1.0, add ->idk and idc, pos ->from -1.0(left) to 1.0(right) );
  in.play();
}

void draw() {
  
}
