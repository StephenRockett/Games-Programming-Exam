//Stephen Rockett - C21354883

float changer = 0, wordLengthF = 1;
int wordLengthI, num;

float numF = 11, hasLegsF = 0;
float [] tadpoleLength = new float[num];
float [] offset = {0, 35, -35, 70, -70, 105, -105, 140, -140, 175};

int N1, N2, N3, N4, N5;
float n1, n2, n3, n4, n5;
String [] Name1 = new String[5];
String [] Name2 = new String[5];
String [] Name3 = new String[5];
String [] Name4 = new String[5];
String [] Name5 = new String[5];

boolean keyWasPressedC, keyWasPressedN, keyWasPressedB, keyWasPressedG, keyWasPressedE, hasLegs;

float gend, partOffset, eyeOffset, eyesF;
int eyes;
boolean m, f, h, n;


void setup() {
  size(500, 500);
}


void draw() {
  background (0);

  Colour();
  Body();
  Gender();
  Eyes();
  Name();
}


void Colour() {
  colorMode(HSB);

  if (keyPressed == true && keyWasPressedC == false) {
    if (key == ' ') {
      changer = random(0, 255);
      keyWasPressedC = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedC = false;
  }

  stroke(changer, 200, 200);
}

void Body() {

  if (keyPressed == true && keyWasPressedB == false) {
    if (key == ' ') {
      numF = random(1, 11);
      hasLegsF = random(0, 2);
      keyWasPressedB = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedB = false;
  }

  noFill();
  strokeWeight(2);

  if (hasLegsF < 1) {
    hasLegs = false;
  } else {
    hasLegs = true;
  }

  if (numF < 2) {
    num = 1;
  }
  if (numF < 3 && numF > 2) {
    num = 2;
  }
  if (numF > 4 && numF < 3) {
    num = 3;
  }
  if (numF < 5 && numF > 4) {
    num = 4;
  }
  if (numF > 6 && numF < 5) {
    num = 5;
  }
  if (numF < 7 && numF > 6) {
    num = 6;
  }
  if (numF > 8 && numF < 7) {
    num = 7;
  }
  if (numF < 9 && numF > 8) {
    num = 8;
  }
  if (numF < 10 && numF > 9) {
    num = 9;
  }
  if (numF > 10) {
    num = 10;
  }

  for (int i = 0; i < num; i ++) {
    if (hasLegs == true) {
      noFill();
      stroke(changer, 200, 200);
      line (width/2 - 30, height/2 + offset[i], width/2 - 17.5, height/2 + offset[i]);
      line (width/2 + 30, height/2 + offset[i], width/2 + 17.5, height/2 + offset[i]);

      fill (0);
      noStroke();
      if (num == 10) {
        rect(width/2 -35, (height/2 - 17.5) - 140, 70, 35);
      }
      if (num == 9) {
        rect(width/2 -35, (height/2 - 17.5) - 140, 70, 35);
      }
      if (num == 8) {
        rect(width/2 -35, (height/2 - 17.5) - 105, 70, 35);
      }
      if (num == 7) {
        rect(width/2 -35, (height/2 - 17.5) - 105, 70, 35);
      }
      if (num == 6) {
        rect(width/2 -35, (height/2 - 17.5) - 70, 70, 35);
      }
      if (num == 5) {
        rect(width/2 -35, (height/2 - 17.5) - 70, 70, 35);
      }
      if (num == 4) {
        rect(width/2 -35, (height/2 - 17.5) - 35, 70, 35);
      }
      if (num == 3) {
        rect(width/2 -35, (height/2 - 17.5) - 35, 70, 35);
      }
      if (num == 2) {
        rect(width/2 -35, (height/2 - 17.5) - 0, 70, 35);
      }
      if (num == 1) {
        rect(width/2 -35, (height/2 - 17.5) - 0, 70, 35);
      }
    }
  }
  for (int i = 0; i < num; i ++) {
    noFill();
    stroke(changer, 200, 200);

    circle (width/2, height/2 + offset[i], 35);
  }
}

void Gender() {
  
    if (keyPressed == true && keyWasPressedG == false) {
    if (key == ' ') {
      gend = random(1, 5);
      
      m = true;
      f = true;
      h = true;
      n = true;
      
      keyWasPressedG = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedG = false;
  }
  
  
  if (gend < 2){
    m = true;
    f = false;
    h = false;
    n = false;
  }
  if (gend < 3 && gend > 2){
    m = false;
    f = true;
    h = false;
    n = false;
  }
  if (gend < 4 && gend > 3){
    m = false;
    f = false;
    h = true;
    n = false;
  }
  if (gend < 5 && gend > 4){
    m = false;
    f = false;
    h = false;
    n = true;
  }
  
   if (num == 1) {
        partOffset = 0;
   }
      if (num == 2) {
        partOffset = 35;
   }
      if (num == 3) {
        partOffset = 35;
   }
      if (num == 4) {
        partOffset = 70;
   }
      if (num == 5) {
        partOffset = 70;
   }
      if (num == 6) {
        partOffset = 105;
   }
      if (num == 7) {
        partOffset = 105;
   }
      if (num == 8) {
        partOffset = 140;
   }
      if (num == 9) {
        partOffset = 140;
   }
      if (num == 10) {
        partOffset = 175;
   }
   
  if (m == true){
    line (width/2, height/2 + 17.5 + partOffset, width/2, height/2 + partOffset + 30);
    circle (width/2, height/2 + 34 + partOffset, 8);  
  }
  if (f == true){
    circle (width/2, height/2 + partOffset, 15);  
  }
  if (h == true){
    circle (width/2, height/2 + partOffset, 15); 
    line (width/2, height/2 + 17.5 + partOffset, width/2, height/2 + partOffset + 30);
    circle (width/2, height/2 + 34 + partOffset, 8);  
  }
  
}

void Eyes() {
  
  if (keyPressed == true && keyWasPressedE == false) {
    if (key == ' ') {
      eyesF = random(0, 10);

      keyWasPressedE = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedE = false;
  }
  
  if (eyesF < 1){
    eyes = 0;
  }
  if (eyesF < 2 && eyesF > 1){
    eyes = 1;
  }
  if (eyesF < 3 && eyesF > 2){
    eyes = 2;
  }
  if (eyesF < 4 && eyesF > 3){
    eyes = 3;
  }
  if (eyesF < 5 && eyesF > 4){
    eyes = 4;
  }
  if (eyesF < 6 && eyesF > 5){
    eyes = 5;
  }
  if (eyesF < 7 && eyesF > 6){
    eyes = 6;
  }
  if (eyesF < 8 && eyesF > 7){
    eyes = 7;
  }
  if (eyesF < 9 && eyesF > 8){
    eyes = 8;
  }
  if (eyesF > 9){
    eyes = 9;
  }
  
     if (num == 1) {
        eyeOffset = -35;
   }
      if (num == 2) {
        eyeOffset = -35;
   }
      if (num == 3) {
        eyeOffset = -70;
   }
      if (num == 4) {
        eyeOffset = -70;
   }
      if (num == 5) {
        eyeOffset = -105;
   }
      if (num == 6) {
        eyeOffset = -105;
   }
      if (num == 7) {
        eyeOffset = -140;
   }
      if (num == 8) {
        eyeOffset = -140;
   }
      if (num == 9) {
        eyeOffset = -175;
   }
      if (num == 10) {
        eyeOffset = -175;
   }
  
  if (eyes == 1){
  circle (width/2, height/2 + eyeOffset - 10, 8); //center
  line (width/2, height/2 + eyeOffset - 6, width/2, height/2 + eyeOffset + 15); // center
  }
  if (eyes == 2){
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //CmidR
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //CmidR
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //CmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //CmidL  
  }
  
  if (eyes == 3) {
  circle (width/2, height/2 + eyeOffset - 10, 8); //center
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //CmidR
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //CmidR
  line (width/2, height/2 + eyeOffset - 6, width/2, height/2 + eyeOffset + 15); // center
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //CmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //CmidL   
  }
  
  if (eyes == 4) {
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //CmidR
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //CmidR
  circle (width/2 + 35, height/2 + eyeOffset + 10, 8); //midR
  circle (width/2 - 35, height/2 + eyeOffset + 10, 8); //midL
  line (width/2 + 33, height/2 + eyeOffset + 12, width/2 + 13, height/2 + eyeOffset + 25); //midR
  line (width/2 - 33, height/2 + eyeOffset + 12, width/2 - 13, height/2 + eyeOffset + 25); //midL
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //CmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //CmidL 
  }
  
  if (eyes == 5) {
  circle (width/2, height/2 + eyeOffset - 10, 8); //center
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //CmidR
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //CmidR
  line (width/2, height/2 + eyeOffset - 6, width/2, height/2 + eyeOffset + 15); // center
  circle (width/2 + 35, height/2 + eyeOffset + 10, 8); //midR
  circle (width/2 - 35, height/2 + eyeOffset + 10, 8); //midL
  line (width/2 + 33, height/2 + eyeOffset + 12, width/2 + 13, height/2 + eyeOffset + 25); //midR
  line (width/2 - 33, height/2 + eyeOffset + 12, width/2 - 13, height/2 + eyeOffset + 25); //midL
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //CmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //CmidL 
  }
  
  if (eyes == 6) {
  circle (width/2 + 35, height/2 + eyeOffset + 10, 8); //midR
  circle (width/2 + 38.5, height/2 + eyeOffset + 30, 8); //CmidR
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //EmidL
  circle (width/2 - 35, height/2 + eyeOffset + 10, 8); //midL
  circle (width/2 - 38.5, height/2 + eyeOffset + 30, 8); //CmidL
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //EmidL
  line (width/2 + 33, height/2 + eyeOffset + 12, width/2 + 13, height/2 + eyeOffset + 25); //midR
  line (width/2 - 33, height/2 + eyeOffset + 12, width/2 - 13, height/2 + eyeOffset + 25); //midL
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //EmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //EmidL
  line (width/2 + 36, height/2 + eyeOffset + 31, width/2 + 14.5, height/2 + eyeOffset + 34.5); //CmidR
  line (width/2 - 36, height/2 + eyeOffset + 31, width/2 - 14.5, height/2 + eyeOffset + 34.5); //CmidL 
  }
  
  if (eyes == 7) {
  circle (width/2, height/2 + eyeOffset - 10, 8); //center
  circle (width/2 + 35, height/2 + eyeOffset + 10, 8); //midR
  circle (width/2 + 38.5, height/2 + eyeOffset + 30, 8); //CmidR
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //EmidR
  circle (width/2 - 35, height/2 + eyeOffset + 10, 8); //midL
  circle (width/2 - 38.5, height/2 + eyeOffset + 30, 8); //CmidL
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //EmidL
  line (width/2, height/2 + eyeOffset - 6, width/2, height/2 + eyeOffset + 15); // center
  line (width/2 + 33, height/2 + eyeOffset + 12, width/2 + 13, height/2 + eyeOffset + 25); //midR
  line (width/2 - 33, height/2 + eyeOffset + 12, width/2 - 13, height/2 + eyeOffset + 25); //midL
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //EmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //EmidL
  line (width/2 + 36, height/2 + eyeOffset + 31, width/2 + 14.5, height/2 + eyeOffset + 34.5); //CmidR
  line (width/2 - 36, height/2 + eyeOffset + 31, width/2 - 14.5, height/2 + eyeOffset + 34.5); //CmidL
  }
  
  if (eyes == 8){
  circle (width/2 + 42, height/2 + eyeOffset + 50, 8); //endR
  circle (width/2 + 35, height/2 + eyeOffset + 10, 8); //midR
  circle (width/2 + 38.5, height/2 + eyeOffset + 30, 8); //CmidR
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //EmidR
  circle (width/2 - 42, height/2 + eyeOffset + 50, 8); //endL
  circle (width/2 - 35, height/2 + eyeOffset + 10, 8); //midL
  circle (width/2 - 38.5, height/2 + eyeOffset + 30, 8); //CmidL
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //EmidL
  line (width/2 + 39, height/2 + eyeOffset + 50, width/2 + 16, height/2 + eyeOffset + 44); //endR
  line (width/2 - 39, height/2 + eyeOffset + 50, width/2 - 16, height/2 + eyeOffset + 44); //endL
  line (width/2 + 33, height/2 + eyeOffset + 12, width/2 + 13, height/2 + eyeOffset + 25); //midR
  line (width/2 - 33, height/2 + eyeOffset + 12, width/2 - 13, height/2 + eyeOffset + 25); //midL
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //EmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //EmidL
  line (width/2 + 36, height/2 + eyeOffset + 31, width/2 + 14.5, height/2 + eyeOffset + 34.5); //CmidR
  line (width/2 - 36, height/2 + eyeOffset + 31, width/2 - 14.5, height/2 + eyeOffset + 34.5); //CmidL
  }
  
  
  if (eyes == 9){
  circle (width/2, height/2 + eyeOffset - 10, 8); //center
  circle (width/2 + 42, height/2 + eyeOffset + 50, 8); //endR
  circle (width/2 + 35, height/2 + eyeOffset + 10, 8); //midR
  circle (width/2 + 38.5, height/2 + eyeOffset + 30, 8); //CmidR
  circle (width/2 + 17.5, height/2 + eyeOffset, 8); //EmidR
  circle (width/2 - 42, height/2 + eyeOffset + 50, 8); //endL
  circle (width/2 - 35, height/2 + eyeOffset + 10, 8); //midL
  circle (width/2 - 38.5, height/2 + eyeOffset + 30, 8); //CmidL
  circle (width/2 - 17.5, height/2 + eyeOffset, 8); //EmidL
  line (width/2, height/2 + eyeOffset - 6, width/2, height/2 + eyeOffset + 15); // center
  line (width/2 + 39, height/2 + eyeOffset + 50, width/2 + 16, height/2 + eyeOffset + 44); //endR
  line (width/2 - 39, height/2 + eyeOffset + 50, width/2 - 16, height/2 + eyeOffset + 44); //endL
  line (width/2 + 33, height/2 + eyeOffset + 12, width/2 + 13, height/2 + eyeOffset + 25); //midR
  line (width/2 - 33, height/2 + eyeOffset + 12, width/2 - 13, height/2 + eyeOffset + 25); //midL
  line (width/2 + 16.5, height/2 + eyeOffset + 3, width/2 + 6.5, height/2 + eyeOffset + 20); //EmidR
  line (width/2 - 16.5, height/2 + eyeOffset + 3, width/2 - 6.5, height/2 + eyeOffset + 20); //EmidL
  line (width/2 + 36, height/2 + eyeOffset + 31, width/2 + 14.5, height/2 + eyeOffset + 34.5); //CmidR
  line (width/2 - 36, height/2 + eyeOffset + 31, width/2 - 14.5, height/2 + eyeOffset + 34.5); //CmidL
  }
  
}

void Name() {
  fill(changer, 200, 200);
  if (keyPressed == true && keyWasPressedN == false) {
    if (key == ' ') {
      n1 = random(0, 6);
      n2 = random(0, 6);
      n3 = random(0, 6);
      n4 = random(0, 6);
      n5 = random(0, 6);
      wordLengthF = random(1, 6);
      keyWasPressedN = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedN = false;
  }

  if (wordLengthF < 2) {
    wordLengthI = 1;
  }
  if (wordLengthF > 2 && wordLengthF < 3) {
    wordLengthI = 2;
  }
  if (wordLengthF > 3 && wordLengthF < 4) {
    wordLengthI = 3;
  }
  if (wordLengthF > 4 && wordLengthF < 5) {
    wordLengthI = 4;
  }
  if (wordLengthF < 5) {
    wordLengthI = 5;
  }

  if (n1 < 1) {
    N1 = 0;
  }
  if (n1 < 2 && n1 > 1) {
    N1 = 1;
  }
  if (n1 < 3 && n1 > 2) {
    N1 = 2;
  }
  if (n1 < 4 && n1 > 3) {
    N1 = 3;
  }
  if (n1 > 4) {
    N1 = 4;
  }

  if (n2 < 1) {
    N2 = 0;
  }
  if (n2 < 2 && n2 > 1) {
    N2 = 1;
  }
  if (n2 < 3 && n2 > 2) {
    N2 = 2;
  }
  if (n2 < 4 && n2 > 3) {
    N2 = 3;
  }
  if (n2 > 4) {
    N2 = 4;
  }

  if (n3 < 1) {
    N3 = 0;
  }
  if (n3 < 2 && n3 > 1) {
    N3 = 1;
  }
  if (n3 < 3 && n3 > 2) {
    N3 = 2;
  }
  if (n3 < 4 && n3 > 3) {
    N3 = 3;
  }
  if (n3 > 4) {
    N3 = 4;
  }

  if (n4 < 1) {
    N4 = 0;
  }
  if (n4 < 2 && n4 > 1) {
    N4 = 1;
  }
  if (n4 < 3 && n4 > 2) {
    N4 = 2;
  }
  if (n4 < 4 && n4 > 3) {
    N4 = 3;
  }
  if (n4 > 4) {
    N4 = 4;
  }

  if (n5 < 1) {
    N5 = 0;
  }
  if (n5 < 2 && n5 > 1) {
    N5 = 1;
  }
  if (n5 < 3 && n5 > 2) {
    N5 = 2;
  }
  if (n5 < 4 && n5 > 3) {
    N5 = 3;
  }
  if (n5 < 5 && n5 > 4) {
    N5 = 4;
  }

  Name1[0] = "Hungry";
  Name1[1] = "Giga";
  Name1[2] = "Furry";
  Name1[3] = "Large";
  Name1[4] = "Spiny";

  Name2[0] = "Purple";
  Name2[1] = "Blue";
  Name2[2] = "Green";
  Name2[3] = "Yellow";
  Name2[4] = "Red";

  Name3[0] = "Fast";
  Name3[1] = "Bald";
  Name3[2] = "Dotted";
  Name3[3] = "Plump";
  Name3[4] = "Plain";

  Name4[0] = "Desert";
  Name4[1] = "Jungle";
  Name4[2] = "Toxic";
  Name4[3] = "Forest";
  Name4[4] = "Arctic";

  Name5[0] = "Frog";
  Name5[1] = "Toad";
  Name5[2] = "BullFrog";
  Name5[3] = "Tadpole";
  Name5[4] = "Newt";


  textAlign(CENTER, BOTTOM);
  textSize(24);

  if (wordLengthI == 1) {
    text (Name5[N5], width/2, 60);
  }

  if (wordLengthI == 2) {
    text (Name5[N5], width/2 + 40, 60);
    text (Name4[N4], width/2 - 40, 60);
  }

  if (wordLengthI == 3) {
    text (Name5[N5], width/2 + 80, 60);
    text (Name4[N4], width/2, 60);
    text (Name3[N3], width/2 - 80, 60);
  }

  if (wordLengthI == 4) {
    text (Name5[N5], width/2 + 120, 60);
    text (Name4[N4], width/2 + 40, 60);
    text (Name3[N3], width/2 - 40, 60);
    text (Name2[N2], width/2 - 120, 60);
  }

  if (wordLengthI == 5) {
    text (Name5[N5], width/2 + 160, 60);
    text (Name4[N4], width/2 + 80, 60);
    text (Name3[N3], width/2, 60);
    text (Name2[N2], width/2 - 80, 60);
    text (Name1[N1], width/2 - 160, 60);
  }
}

//https://processing.org/reference/keyPressed_.html
//https://processing.org/reference/textAlign_.html
