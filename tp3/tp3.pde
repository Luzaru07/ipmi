/*
hola profe,perdon por entregar el tp taan incompleto, esta vez no tengo excusa
lo pospuse tanto q terminé quedanndome sin tiempo :c, voy a tratar de hacerlo
a tiempo y mejor para el recuperatorio y el próximo tp!! gracias por leer :>

*/
int cantA = 3;
int cantB = 3;
void setup () {
  size (800, 400);
}

void draw () {
  background (255);
  PImage miFoto = loadImage("Data/A.jpeg");
  image(miFoto, 0, 0, 400, 400);
  for (int a=0; a<cantA; a++ ) {
    for (int b=0; b<cantB; b++ ) {
      float ancho = 400/cantA;
      float alto = 400/cantB;
      modulo( a*ancho+400, b*alto, ancho, alto, a, b);
    }
  }
}

void mousePressed(){
  
}
