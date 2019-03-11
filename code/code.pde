Personaggio ron;
Personaggio castle;

class Personaggio {
  PShape forma;
  Personaggio (String filename) {
    forma=loadShape(filename);
    forma.setFill(color(#1BE31D));
  }

  void disegna(float x ,float y){
      shape(forma, x ,y);

  }
}

void setup() {
  fullScreen(P3D);
  ron = new Personaggio ("ron.obj");
  castle = new Personaggio ("castle.obj");
}

void draw() {
  background(0, 0, 255);
  lights();
  ron.disegna(width*0.1, height*0.5);
  castle.disegna(width*0.9, height*0.5);
 }
