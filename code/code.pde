object castello;

class object {
  PShape castello;
  object(String filename) {
    castello = loadShape(filename);
    castello.setFill(color(#B2B2B2));
  }

  void disegna(float x, float y) {
    shape(castello, x, y);
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

  void disegna(float x, float y) {
    shape(shape, x, y);
  }
}


void setup() {
  fullScreen(P3D);

  ron = new Personaggio("ron.obj");

  castello = new object("castle.obj");
}

void draw() {
  background(000000);

  lights();
  shape(castello.castello, width/10*9, height/2);

  ron.disegna(ron.x, ron.y);

  if (ron.x < width/10*9) {
    ron.x=ron.x + ron.xron;
  }
}
