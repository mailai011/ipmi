class Meteorito {
  constructor(posX, posY) {
    this.posX = posX;
    this.posY = posY;
    this.vida = true;
    this.velocidad = (0.5); 
  }

  dibujar() {
    if (this.vida) {
      fill(255, 0, 0);
      ellipse(this.posX, this.posY, 20, 20);
      this.posY += this.velocidad;
      
      // Reinicia meteorito cuando sale de la pantalla
      if (this.posY > height) {
        this.posY = random(-300, -80);
        this.posX = random(50, width - 50);
      }
    }
  }
}
