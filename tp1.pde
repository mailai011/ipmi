//Maia Laikow,Comision 2


PImage fondo;
void setup(){
  size(800,400);
  background(255);
  fondo= loadImage("tarde.jpg");
}
void draw(){
  image(fondo,400,0,400,400);
 println(mouseX+"/"+mouseY);
  //
  noStroke();
  fill(255,140,0);
  rect(0,0,400,400);
fill(184,134,11);
rect(0,250,400,400);
fill(255,165,0);
strokeJoin(12);
triangle(341,188,250,247,397,246);
triangle(320,189,230,237,395,237);
triangle(270,194,178,235,356,237);
triangle(153,206,304,242,26,245);
fill(139,69,19);
triangle(136,250,0,165,0,252);
triangle(362,184,265,249,401,201);
triangle(114,201,293,252,3,250);
strokeJoin(ROUND);
triangle(197,208,104,247,303,251);
triangle(286,196,206,247,356,245);
//
fill(255,165,0);
circle(194,20,90);

fill(255,215,0);
circle(194,20,80);
fill(255,255,0);
circle(194,20,70);
fill(255,250,205);
circle(194,20,60);
fill(255,250,205,90);
ellipse(194,50,100,15);
ellipse(194,60,100,5);
ellipse(194,65,90,5);
ellipse(100,60,100,5);
ellipse(290,60,100,5);
ellipse(345,80,100,5);
ellipse(100,120,160,5);
ellipse(300,110,180,5);
ellipse(310,140,180,5);
strokeJoin(12);
fill(255,255,0,100);
rect(100,250,180,200);




fill(0,0,0);
strokeJoin(12);
triangle(401, 197, 400, 280, 200, 280);



}
