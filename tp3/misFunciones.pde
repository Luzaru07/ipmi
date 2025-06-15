
//////////////////////////////////////////////////////////////////////////////////
void modulo (float x_, float y_, float w_, float h_, int indiceA_, int indiceB_) {
push () ;

//cuadrados
if( (indiceA_ + indiceB_)%2==0){
  fill (37, 40, 183); //azul
 } else {
  fill (0);
 } 
 rect(x_, y_, w_, h_);
 
 //circulos
  noStroke ();
 if( (indiceA_ + indiceB_)%2==0){
  fill (0);
 } else {
  fill (37, 40, 183); //azul
 }
 ellipse(x_+67, y_+67, w_-2, h_-2);
 
 pop () ;
}
