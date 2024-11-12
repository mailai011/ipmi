class Personaje {
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.vida = 3;
    this.miColor = color(0, 255, 0);
    this.bala = new Bala(posX, posY);
    this.municion = 20; // Límite de munición
  }

  dibujar() {
    this.bala.dibujar();
    fill(this.miColor);
    rect(this.posX, this.posY, 50, 25);
    fill(255);
    textSize(16);
    text("Munición: " + this.municion, 10, 20);
  
  }

  teclaMovimiento() {
    if (keyIsDown(LEFT_ARROW)) {
      this.movimientoIzq();
    } else if (keyIsDown(RIGHT_ARROW)) {
      this.movimientoDer();
    }
  }

  teclaActiva(keyCode) {
    if (keyCode == ENTER) {
      this.dispararBala();
    }
  }

  movimientoIzq() {
    this.posX -= 5;
  }

  movimientoDer() {
    this.posX += 5;
  }
  
  dispararBala() {
    if (this.municion > 0 && !this.bala.disparada) { // Verifica si hay munición disponible
      this.bala = new Bala(this.posX + 25, this.posY);
      this.bala.disparar();
      this.municion--; // Resta una bala a la munición
  }
}
}
