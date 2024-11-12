class Bala {
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.miColor = color(80);
    this.disparada = false;
  }

  disparar() {
    this.disparada = true;
  }

  dibujar() {
    if (this.disparada) {
      fill(this.miColor);
      ellipse(this.posX, this.posY, 5, 15);
      this.mover();
      if (this.posY < 0) {
        this.disparada = false; // Reinicia la bala si sale de la pantalla
      }
    }
  }

  mover() {
    this.posY -= 5;
  }
}
