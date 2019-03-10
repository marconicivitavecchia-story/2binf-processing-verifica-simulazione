Personaggio ron;
Oggetto castello;

class Personaggio {
  PShape shape;
  int x;
  int y;
  int xRon;
  Personaggio() {
    shape=loadShape("ron.obj");
    shape.setFill(color(255, 0, 0));
  }
}

class Oggetto {
  PShape shape;
  int x;
  int y;
  Oggetto() {
    shape=loadShape("castle.obj");
  }
}


void setup() {
  fullScreen(P3D);
  ron = new Personaggio();
  ron.x = width/10;
  ron.y = height/2;
  ron.xRon = 5;
  castello.x = width/10*9;
  castello.y = height/2;
}

void draw() {
  background(0, 0, 255);
  lights();
  shape(ron.shape, ron.x, ron.y);
  ron.x=ron.x+ron.xRon;
  shape(castello.shape, castello.x, castello.y);
}
