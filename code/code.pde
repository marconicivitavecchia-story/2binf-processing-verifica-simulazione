Edificio castello;

class Edificio {
  PShape shape;
  Edificio(String filename) {
    shape = loadShape(filename);
    shape.setFill(color(#B2B2B2));
  }

  void disegna(float x, float y) {
    shape(shape, x, y);
  }
}

Personaggio ron;
class Personaggio {
  PShape shape;
  int x=width/10;
  int y=height/2;
  int xron = 150;
  Personaggio(String filename) {
    shape = loadShape(filename);
    shape.setFill(color(#FF0000));
  }

  void disegna() {
    shape(shape, x, y);
  }
}


void setup() {
  fullScreen(P3D);

  ron = new Personaggio("ron.obj");

  castello = new Edificio("castle.obj");
}

void draw() {
  background(000000);

  lights();
  castello.disegna(width/10*9, height/2);

  ron.disegna();

  if (ron.x < width/10*9) {
    ron.x=ron.x + ron.xron;
  }
}
