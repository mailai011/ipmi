void Pintar4(){
background( 255 );
image(imagen,0,0);
//estados
for (int x=2; x<cant; x++){
  for (int y=0; y<cant; y++){
    rect(x*tam, y*tam,tam,tam);

  for( int i = 0 ; i < 8 ; i++){

    float r = dist( mouseX, mouseY, 600, 300+i*28 );
    float m = map( r, 0, 400/2, 7, 11 );
    float c = map( r, 0, 400/2, 0,100);

    strokeWeight( m );
stroke( c, c, 0 );
 square( 500, 100, i*28 ); 
stroke( 0, c, 0 );
 square( 700, 100, i*28 );
stroke( c, 0, c );
 square( 500, 300, i*28 );
stroke( 0, 0, c );
  square( 700, 300, i*28 );
  }
  }
}
  
}
