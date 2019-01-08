String[] Key = new String[5];
String KeyK = "";
String k = "";
String[] plainText = new String[5];

void setup() {
  size(512,424);
  
  for (int i=0; i<5; i++) {
    Key[i] = "";
    plainText[i] = "";
    
  }
}

void draw() {
  for (int i=0; i<5; i++) {
    k = k + Key[i];
    print(k);
  }
  KeyK = k;
  k = "";
  
  fill(0);
  textSize(42);
  background(255);
  print(KeyK);
  text(KeyK, width/2, height/2);
  
  
}

void keyPressed() {
  for (int i=0; i<5; i++) {
    if (Key[i] == "") {
      Key[i] = str(key);
      break;
    }
  }
}
