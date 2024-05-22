//tp2
//Maia Laikow 
//legajo :119062/7
//Comision 2 
// variables 
 
PFont fuente;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
int estado ;
String texto1;
String texto2;
String texto3;
String texto4;
 //
void setup(){
  background(0);
  
  size (640,480);
   estado =1 ;
fuente =loadFont("BellBold.vlw");
textFont(fuente);
 textAlign( CENTER, CENTER );
  textSize(32);
  println(frameCount);
  //cargar imagen
 img1 =loadImage("MortalKombat.jpg");
 img2 =loadImage("mortalkombatjuego.jpg");
 img3 =loadImage("videojuegomk.jpg");
 img4 =loadImage("mkfinalmate.jpg");

  
   texto1 ="Mortal Kombat es un videojuego de lucha,\ncon un plano bidimensional\n y gráficos tridimensionales.";
   texto2="Es la novena entrega de \nla serie de Mortal Kombat,\n fue desarrollado por \nNetherRealm Studios y publicado\n exclusivamente bajo la licencia \nde Warner Bros.";
   texto3="Mortal Kombat recibió críticas positivas,\n y ganó varios premios\n de videojuegos de lucha.";
   texto4="GAME OVER\ntocar para reiniciar";
  //asignacionde estado 
  estado=1;
}

  void draw(){
    println(frameCount/60+"/"+mouseX+"/"+mouseY);
    
     //estados 
   if (estado ==1){
     image(img1,0,0,640,480);
     
     text(texto1,320,240-frameCount/2);
   
     if(frameCount/60>=5){
       frameCount=0;
       estado=2;
       
     }
   }
   
     if(estado ==2){
     image(img2,0,0,640,480);
     text(texto2,320,240-frameCount/-2);
     
     if(frameCount/60>=5){
       frameCount=0;
       estado=3;
       
     }
   }
     
     if(estado ==3){
     image(img3,0,0,640,480);
    text(texto3,320,240-frameCount/1);
     
     if(frameCount/60>=6){
       frameCount=0;
       estado=4;
      
     
     }
   }
     
     if(estado ==4){
     image(img4,0,0,640,480);
     text(texto4,320,240);
     
     if(frameCount/60>=3){
       frameCount=0;
       estado=5;
      
     } 
   }
     if(estado==5){
     }
   
}
void mousePressed(){
  if( estado == 4 && mouseX>=235 && mouseX<=404 && mouseY>=235 && mouseY<=404){
    frameCount = 1;
    estado = 1;
  }
}
