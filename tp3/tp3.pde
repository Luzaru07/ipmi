//Luz Rodríguez Calderón
//Comisión 3 David Bedoian
//video de youtube: https://youtu.be/0lkHPUsDmd8
color c1;//azul
color c2;//negro
//cantidad de cuadrados y circulos
int cantA = 3;
int cantB = 3;
void setup () {
  size (800, 400);
  c1 = color(37, 40, 183); //azul
  c2 = color(0); //negro
}

void draw () {
  background (255);
  PImage miFoto = loadImage("Data/A.jpeg");
  image(miFoto, 0, 0, 400, 400);
  if (posicionMouse()) {
    c1 = color(0);
    c2 = color(37, 40, 183);
  } else {
    c1 = color(37, 40, 183);
    c2 = color(0);
}
  for (int a=0; a<cantA; a++ ) {
    for (int b=0; b<cantB; b++ ) {
      float ancho = 400/cantA;
      float alto = 400/cantB;
      modulo( a*ancho+400, b*alto, ancho, alto, a, b);
    }
  }
}

void keyPressed(){
  reiniciar ();
}
