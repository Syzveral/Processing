import processing.sound.*;

SinOsc[] sineWaves; //A smooth repetitive oscillation, a.k.a a perfect curve on a graph
float[] sineFreq;
int numSines = 5;

void setup() {
  size(512,424);
  background(255);
  
  sineWaves = new SinOsc[numSines];
  sineFreq = new float[numSines];
  
  for (int i = 0; i < numSines; i++) {
    //Calculate the amplitude for each oscillation
    float sineVolume = (1.0 / numSines) / (i + 1);     
    //Create the oscillation
    sineWaves[i] = new SinOsc(this);
    //Start Oscillators
    sineWaves[i].play();
    //Set the amplitude for all oscillators
    sineWaves[i].amp(sineVolume);
  }
}

void draw() {
  //Map mouseY from 0 to 1
  float yoffset = map(mouseY, 0, height, 0, 1);
  //Map mouseY logarithmatically to 150 - 1150 to create base frequency range
  float frequency = pow(1000, yoffset) +150;
  //Use mouseX mapped from -0.5 to 0.5 as a detune (harmonic/not)
  float detune = map(mouseX, 0, width, -0.5, 0.5);
  
  for (int i = 0; i < numSines; i++) {
    //Record the frequency
    sineFreq[i] = frequency * (i + 1 * detune);
    //Set the frequencies for all oscillators
    sineWaves[i].freq(sineFreq[i]);
  }
}
