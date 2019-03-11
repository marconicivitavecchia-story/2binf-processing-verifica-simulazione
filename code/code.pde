Personaggio castle; // dovrebbe essere la classe edificio
Personaggio ron;


void setup() {
  fullScreen(P3D);
  castle = new Personaggio();
  ron = new Personaggio();

  castle.personaggio =  loadShape("castle.obj");

  ron.personaggio = loadShape("ron.obj");
}

void draw() {
    background(0, 0, 255);
    lights();
    ron.disegna(width*.5, height*.5);
    castle.disegna(width*.1, height*.9);
  }
  
class Personaggio {
  PShape personaggio;
  float posX;
  float posY;

  void disegna()
  {
    shape(personaggio, posX, posY);
  }
}
