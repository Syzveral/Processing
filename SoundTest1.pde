import processing.sound.*;
Sound s;

void setup() {
  size(512,424);
  
  println(Sound.list());
  
  SinOsc sin = new SinOsc(this);
  sin.play(200,0.2);
  sin = new SinOsc(this);
  sin.play(205,0.2);
  
  s = new Sound(this);
}

void draw() {
  float amplitude = map(mouseY, 0, height, 0.4, 0.0);
  
  s.volume(amplitude);
}
