//Maia Laikow 
//Comision 2
//Legajo:119062/7
https://www.youtube.com/watch?v=kvJu3W48xOY
PImage figura;
float tam;
int cant,cant2;
color cuadro1,cuadro2,cuadro3,cuadro4;

void setup(){
  size(800,400);
  background(0);
  colorMode(HSB,360,100,100);
  figura =loadImage("F_15.jpg");
  cant =2;
  cant2 =10;
  tam = height/2;
  cuadro1= color(168, 80, 22);
  cuadro2= color(6, 64, 31);
  cuadro3= color(348, 88, 55);
  cuadro4= color(271, 87, 44);
}

void draw (){
  dibujarGrilla();
  image(figura,0,0,400,400);
  println(mouseX+"/"+mouseY);
  
  //movimiento
  for( int n = 0 ; n < 8 ; n++){
    float p = dist( mouseX, mouseY, 400, n+n*20 );//movimiento con mouse
    float e = map( p, 0, 700/2, 1, 10 );
    stroke(0,100);
    strokeWeight( e );
  }
}

void keyPressed (){
 if (key == 'r'){
  cuadro1= color(168, 80, 22);
  cuadro2= color(6, 64, 31);
  cuadro3= color(348, 88, 55);
  cuadro4= color(271, 87, 44);
 }
 if (key == 'c'){
  cuadro1= color(colorRandom(360),colorRandom(100),colorRandom(100));
  cuadro2= color(colorRandom(360),colorRandom(100),colorRandom(100));
  cuadro3= color(colorRandom(360),colorRandom(100),colorRandom(100));
  cuadro4= color(colorRandom(360),colorRandom(100),colorRandom(100));
 }
}
