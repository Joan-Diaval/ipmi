color obtenerColorDiagonal(int i, int j) {
  int d = (i + j) % 6;
  return (d == 0 || d == 1 || d == 3) ? color(255, 0, 0) : color(255);
}

void dibujarCorazon(float x, float y, float size, color c, float alpha) {
  pushMatrix();
  translate(x, y);
  scale(size / 100.0);
  fill(c, alpha);
  noStroke();
  beginShape();
  vertex(0, -40);
  bezierVertex(-50, -80, -70, -10, 0, 30);
  bezierVertex(70, -10, 50, -80, 0, -40);
  endShape(CLOSE);
  popMatrix();
}

void dibujarGrilla() {
  translate(400, 0);
  noStroke();
  push();
  float mod = 400.0 / cant;

  for (int i = 0; i < cant; i++) {
    for (int j = 0; j < cant; j++) {
      fill((i + j) % 2 == 0 ? colorRosa : colorVioleta);
      float x = i * mod + mod / 2;
      float y = j * mod + mod / 2;
      rectMode(CENTER);
      rect(x, y, mod, mod);
    }
  }

  for (int i = 0; i <= cant; i++) {
    for (int j = 0; j <= cant; j++) {
      if (i == 0 || i == cant || j == 0 || j == cant) continue;

      float x = i * mod;
      float y = j * mod;

      color corazonColor = obtenerColorDiagonal(i, j);

      // Cambiar color a negro según posicion del mouse
      if (dist(mouseX - 400, mouseY, x, y) < 40) {
        corazonColor = color(0);
      }
      float alpha = 180 + 50 * sin((i + j + frameCount * 0.05));

      // Tamaño según distancia al mouse
      float d = dist(mouseX - 400, mouseY, x, y);
      float tam = map(d, 0, 300, mod * 0.3, mod * 0.6);
      tam = constrain(tam, mod * 0.3, mod * 0.6);

      dibujarCorazon(x, y, tam, corazonColor, alpha);
    }
  }

  pop();
}
