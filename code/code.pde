Personaggio Ron;
class Personaggio{
   PShape forma;
   PShape castello;
   int xRon= 150;

   Personaggio(String "ron.obj") {
    forma = loadShape("ron.obj");
    forma.setFill(color(255 ,0,0));
}
void disegna(float x, float y) {
    shape(forma, x, y);

  }
}

void setup() {
fullScreen(P3D);
}

void draw() {
  background(0,0,255);
  lights();
}
