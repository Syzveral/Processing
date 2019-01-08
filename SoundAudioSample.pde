import processing.sound.*;
AudioSample sample;

void setup() {
  size(512,424);
  background(255);
  //Create the array and write a single sine wave oscillation into it
  int resolution = 100;
  float[] sinewave = new float[resolution];
  for (int i = 0; i < resolution; i++) {
    sinewave[i] = sin(TWO_PI*i/resolution);
  }
  
  //Create the audiosample based on the data set framerate to play 200 oscillations/second
  sample = new AudioSample(this, sinewave, 200 * resolution);
  
  //Play the sample in a loop, but not too loud
  sample.amp(0.2);
  sample.loop();
}

void draw() {
  
}

void keyPressed() {
  
}
