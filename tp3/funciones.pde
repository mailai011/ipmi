void dibujarCuadrados (int x, int y){
  for (int i = 0; i <cant2; i++){
    for (int j = 0; j <cant2; j++){
      pushMatrix();
      translate(500+x * 200,100+y * 200);
      rectMode(CENTER);
      //fill(255);
      if(x+y==0){
        fill(cuadro1);
      }else{
        if(x+y==2){
          fill(cuadro4);
      } 
      }
      if(x==0 && y==1){
        fill(cuadro2);
      }
      else{if(x==1 && y==0){
             fill(cuadro3);
      }
      }
      rect(0,0,tam-j * 20,tam-j * 20);
      popMatrix();
    }
  }
}

void dibujarGrilla(){
  for (int k=0; k < cant; k++){
    for(int t=0; t < cant; t++){
      dibujarCuadrados(k,t);
    }
  }
}


float colorRandom (float rango){
  return(random(rango));
}
