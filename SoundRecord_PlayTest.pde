import processing.sound.*;
AudioIn in;

void setup() {
  size(512,424);
  background(255);
  
  in = new AudioIn(this, 0);
  in.start();
  
  int resolution = 100;
  float[] sinewave = new float[resolution];
  for (int i = 0; i < resolution; i++) {
    sinewave[i] = 1.0/*in.start()*/;
  }
}

void draw() {
  
}
