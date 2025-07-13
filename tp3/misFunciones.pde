void reiniciar (){
  if (key == 'h') {
    c1 = color(37, 40, 183); //azul
    c2 = color(0); //negro
    mouseX = 0;
  }
}
void modulo (float x_, float y_, float w_, float h_, int indiceA_, int indiceB_) {
push () ;
//cuadrados
if( (indiceA_ + indiceB_)%2==0){
  fill (c1);
 } else {
   fill (c2);
 } 
 rect(x_, y_, w_, h_);
 
 //circulos
  noStroke ();
 if( (indiceA_ + indiceB_)%2==0){
  fill (c2);
 } else {
  fill (c1); //azul
 }
 ellipse(x_+67, y_+67, w_-2, h_-2);
 
 pop () ;
}

boolean posicionMouse () {
  return mouseX > width/2;
}
