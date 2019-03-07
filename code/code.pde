Personaggio ron;
Oggetto castello;

class Personaggio {
  PShape ron;
  int x;
  int y;

  Personaggio() {
    ron=loadShape("castle.obj");
  }
}

class Oggetto {
  PShape castello;

  Oggetto() {
    castello=loadShape("castle.obj");
  }
}


void setup() {
  fullScreen(P3D);
  ron = new Personaggio();
  ron.x = width/10;
  ron.y = height/5;
}

void draw() {
  background(0, 0, 255);
  lights();
  
}
