String plaintext = "Praline";
String[] guess = new String[7];



void setup() {
  size(512,424);
  background(255);
  for (int i=0; i<7; i++) {
     guess[i] = "_";
  }
}

void draw() {
  fill(0);
  textSize(42);
  for (int i=1; i<8; i++) {
    text(guess[i-1], width+49*(-i),height/2);
  }
}

void keyPressed() {
  print(key);
}
