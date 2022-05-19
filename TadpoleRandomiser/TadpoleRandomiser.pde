float changer = 0;
float wordLengthF = 1;
int wordLengthI = 1;

int num = 10;
float [] tadpoleLength = new float[num];

int N1 = 0;
float n1 = 0;
String [] Name1 = new String[5];
int N2 = 0;
float n2 = 0;
String [] Name2 = new String[5];
int N3 = 0;
float n3 = 0;
String [] Name3 = new String[5];
int N4 = 0;
float n4 = 0;
String [] Name4 = new String[5];
  
boolean keyWasPressedC;
boolean keyWasPressedN;



void setup() {
  size(500, 500);

  
  
}


void draw() {
  background (50);
  
  Colour();
  Body();
  
  Name();
  
}


void Colour(){
    colorMode(HSB);
  
    if (keyPressed == true && keyWasPressedC == false){
    if (key == ' '){
    changer = random(0, 255);
    keyWasPressedC = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedC = false;
  }
  
  stroke(changer, 200, 200);
}

void Body(){
  
  noFill();
  strokeWeight(2);
  
  circle (width/2, height/2, 35);
  
  /* Test
  circle (width/2, height/2 + 175, 35);
    circle (width/2, height/2 + 140, 35);
      circle (width/2, height/2 + 105, 35);
        circle (width/2, height/2 + 70, 35);
          circle (width/2, height/2 + 35, 35);
  circle (width/2, height/2 - 0, 35);
    circle (width/2, height/2 - 35, 35);
      circle (width/2, height/2 - 70, 35);
        circle (width/2, height/2 - 105, 35);
   */
        

  
}

void Name() {
  fill(changer, 200, 200);
  if (keyPressed == true && keyWasPressedN == false){
    if (key == ' '){
    n1 = random(0, 4);
    n2 = random(0, 4);
    n3 = random(0, 4);
    n4 = random(0, 4);
    wordLengthF = random(1.5, 5);
    keyWasPressedN = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedN = false;
    
  }
  
  if (wordLengthF < 2){
    wordLengthI = 1;
  }
  if (wordLengthF < 3 && wordLengthF > 2){
    wordLengthI = 2;
  }
  if (wordLengthF > 3 && wordLengthF < 4){
    wordLengthI = 3;
  }
  if (wordLengthF > 4){
    wordLengthI = 4;
  }
  
  if (n1 < 1){
    N1 = 0;
  }
  if (n1 < 2 && n1 > 1){
    N1 = 1;
  }
  if (n1 < 3 && n1 > 2){
    N1 = 2;
  }
  if (n1 < 4 && n1 > 3){
    N1 = 3;
  }
  if (n1 < 5 && n1 > 4){
    N1 = 4;
  }
    if (n2 < 1){
    N2 = 0;
  }
  if (n2 < 2 && n1 > 1){
    N2 = 1;
  }
  if (n2 < 3 && n1 > 2){
    N2 = 2;
  }
  if (n2 < 4 && n1 > 3){
    N2 = 3;
  }
  if (n2 < 5 && n1 > 4){
    N2 = 4;
  }
    if (n3 < 1){
    N3 = 0;
  }
  if (n3 < 2 && n1 > 1){
    N3 = 1;
  }
  if (n3 < 3 && n1 > 2){
    N3 = 2;
  }
  if (n3 < 4 && n1 > 3){
    N3 = 3;
  }
  if (n3 < 5 && n1 > 4){
    N3 = 4;
  }
    if (n4 < 1){
    N4 = 0;
  }
  if (n4 < 2 && n1 > 1){
    N4 = 1;
  }
  if (n4 < 3 && n1 > 2){
    N4 = 2;
  }
  if (n4 < 4 && n1 > 3){
    N4 = 3;
  }
  if (n4 < 5 && n1 > 4){
    N4 = 4;
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

Name3[0] = "Desert";
Name3[1] = "Jungle";
Name3[2] = "Toxic";
Name3[3] = "Forest";
Name3[4] = "Arctic";

Name4[0] = "Frog";
Name4[1] = "Toad";
Name4[2] = "BullFrog";
Name4[3] = "Tadpole";
Name4[4] = "Salamander";


textAlign(CENTER, BOTTOM);
textSize(24);

if (wordLengthI == 1){
text (Name4[N4], width/2, 60);
}

if (wordLengthI == 2){
text (Name4[N4], width/2 + 40, 60);
text (Name3[N3], width/2 - 40, 60);
}

if (wordLengthI == 3){
text (Name4[N4], width/2 + 80, 60);
text (Name3[N3], width/2, 60);
text (Name2[N2], width/2 - 80, 60);
}

if (wordLengthI == 4){
text (Name4[N4], width/2 + 120, 60);
text (Name3[N3], width/2 + 40, 60);
text (Name2[N2], width/2 - 40, 60);
text (Name1[N1], width/2 -120, 60);
}
  
  
  
  
}

//https://processing.org/reference/keyPressed_.html
//https://processing.org/reference/textAlign_.html
