// TRABAJO PRACTICO 3
// Joan Diaval Amalla - c3
//https://youtu.be/fCWw3gfxNMA?si=GkKp1sr_rb8tfbsP

int cont;
int cant = 12;
PImage referencia;

color colorRosa;
color colorVioleta;

void setup() {
  size(800, 400);
  referencia = loadImage("referencia.jpg");
  cont = 0;
  inicializarColores();
}

void draw() {
  cont++;
  image(referencia, 0, 0, 400, 400);
  dibujarGrilla();
}

void inicializarColores() {
  colorRosa = color(222, 181, 215);
  colorVioleta = color(156, 99, 173);
}

void mousePressed() {
  colorMode(RGB);
  colorRosa = color(random(255), random(255), random(255));
  colorVioleta = color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    inicializarColores();
    println("Colores reiniciados.");
  }
}
