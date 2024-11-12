class Juego {
  constructor() {
    this.personaje = new Personaje(width / 2 - 25, 380);
    this.enemigos = [];
    this.juegoTerminado = false; // Estado del juego
    
        for (let i = 0; i < 15; i++) { 
      let posXAleatoria = random(50, width - 50);
      let posYInicial = random(-700, -80);
      this.enemigos.push(new Meteorito(posXAleatoria, posYInicial));
    }
  }

  dibujar() {
    this.personaje.dibujar();

    for (let enemigo of this.enemigos) {
      enemigo.dibujar();
    }
    if (this.personaje.municion <= 0) {
      this.juegoTerminado = true; // Termina el juego si las vidas llegan a 0
   }
  }

  teclaMovimiento() {
    this.personaje.teclaMovimiento();
  }

  teclaActiva(keyCode) {
    this.personaje.teclaActiva(keyCode);
  }

  evaluarColision() {
    for (let enemigo of this.enemigos) {
      if (enemigo.vida && dist(
      enemigo.posX,
      enemigo.posY,
      this.personaje.bala.posX,
      this.personaje.bala.posY)< 15) {
        enemigo.vida = false;
        this.personaje.bala.disparada = false; // Detener la bala tras colisión
      }
    }
  }
}
