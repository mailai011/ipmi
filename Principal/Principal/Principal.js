let objJuego;

function setup() {
  createCanvas(640, 480);
  objJuego = new Juego();
}

function draw() {
  background(150);
  objJuego.dibujar();
  objJuego.teclaMovimiento();
  objJuego.evaluarColision();
    if (objJuego.juegoTerminado) {
    fill(255, 0, 0);
    textSize(32);
    text("Perdiste", width / 2 - 50, height / 2);
    noLoop();
  }
}

function keyPressed() {
  objJuego.teclaActiva(keyCode);
}
