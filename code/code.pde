Personaggio castle;
Personaggio ron;


void setup() {
  fullScreen(P3D);
  castle = new Personaggio();
  ron = new Personaggio();
  loadShape("rob.obj");//Ron

  loadShape("castle.obj");//castello
  castle.personaggio =  loadShape("castle.obj");

  ron.personaggio = loadShape("ron.obj");
}
class Personaggio {
  PShape Personaggio;
  float posX;
  float posY;

  {
    shape(personaggio, posX, posY);
  }






  {
  }

  void draw() {
    background(0, 0, 255);
    lights();
    ron.disegna(width*.5, height*.5);
    castle.disegna(width*.1, height*.9);
  }
}
