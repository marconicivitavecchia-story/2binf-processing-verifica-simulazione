Personaggio ron;
Personaggio castle;
class Personaggio {
  PShape ron;
  PShape castle;
  Personaggio (String filename) {
    castle=loadShape(filename);
    castle.setFill(color(#1BE31D));
    ron=loadShape(filename);
    ron.setFill(color(#E31B1B));
    void disegna(float x ,float y){
    shape(ron, x ,y);
    shape(castle, x, y);
        
}}
}

void setup() {
  fullScreen(P3D);
ron = new Personaggio (" ron.obj");
castle = new Personaggio (" castle.obj");
}

void draw() {
  background(0, 0, 255);
  lights();
  ron.disegna(ron.ron, (width/10)*100, (height/50)*100);
  castle.disegna(castle.castle, (width/90*100), (height/50)*100);
}
