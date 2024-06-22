//Maia Laikow 
//Comision 2
//Legajo : 119062/7
//Trabajo Practico 3
//limk video https://youtu.be/2mIP8l3SSBw
int cant=4;
int tam;
int estado;
int contador;
PImage imagen;
void setup(){
  size(800, 400 );
  estado =1;
  noFill();
  strokeWeight( 10 );
  rectMode(CENTER);
  imagen= loadImage("F_15.jpg");
frameRate(1);
}

void draw(){
    if (estado == 1){
    Pintar1();
    contador++;
     if(contador>=3) {
      estado++;
       
     }
  } else if (estado == 2) {
    Pintar2();
}
}

void Pintar1(){
  background( 255 );
 image(imagen,0,0);
println("X:");
println(mouseX);
println("Y:");
println(mouseY);
 println(frameCount/60+"/"+mouseY+"/"+mouseY);
 //estados
for (int x=2; x<cant; x++){
  for (int y=0; y<cant; y++){
    rect(x*tam, y*tam,tam,tam);

  for( int i = 0 ; i < 8 ; i++){
    
    float r = dist( mouseX, mouseY, 600, 300+i*28 );  
    float m = map( r, 0, 400/2, 7,11 );
    float c = map( r, 0, 400/2, 0,100);
    
  strokeWeight ( m );
stroke( 0, c, 0 );
 square( 500, 100, i*28 ); 
stroke( c, 0, 0 );
 square( 700, 100, i*28 );
stroke( c, c, 0 );
 square( 500, 300, i*28 );
stroke( c, 0, c );
  square( 700, 300, i*28 );
  }}
}
}
void mouseClicked(){
  Pintar1();
    estado = 1;
}
    
