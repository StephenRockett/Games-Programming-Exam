float changer = 0;

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

void Name() {

  if (keyPressed == true && keyWasPressedN == false){
    if (key == ' '){
    n1 = random(0, 4);
    keyWasPressedN = true;
    }
  }
  if (keyPressed == false) {
    keyWasPressedN = false;
    
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

Name2[0] = "Jungle";
Name2[1] = "Toxic";
Name2[2] = "Green";
Name2[3] = "Yellow";
Name2[4] = "Red";

Name3[0] = "Back";
Name3[1] = "- Eyed";
Name3[2] = "Footed";
Name3[3] = "Limbed";
Name3[4] = "Toed";

Name4[0] = "Frog";
Name4[1] = "Toad";
Name4[2] = "BullFrog";
Name4[3] = "Tadpole";
Name4[4] = "Salamander";

text (Name1[N1], width/2, height/2);
  
  
  
  
}

//https://processing.org/reference/keyPressed_.html
