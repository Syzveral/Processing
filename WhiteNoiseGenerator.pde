import processing.sound.*;
WhiteNoise noise;
/*
play();-> Start the generator
set(); -> Set Parameters
amp(); -> volume/amplitude
add(); -> Offset the output
pan(); -> Move the noise left(-1.0) to right(1.0)
stop();-> Self explanatory
*/

void setup() {
  size(512,424);
  background(255);
  
  noise = new WhiteNoise(this);
  noise.play();
}

void draw() {
  float amplitude = map(mouseY, 0, height, 1.0, 0.0);
  
  noise.amp(amplitude);
}
