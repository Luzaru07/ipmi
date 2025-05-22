//variables
PFont miFuente;

int numPantalla;
int contadorTiempo;

void setup() {
  size (640, 480);
  numPantalla = 0;
  contadorTiempo = 0;
  frameRate(60);
}

void draw() {
  background (255);
  if ( numPantalla == 0 ) {
    //Pantalla uno
    //Imagen
    PImage a = loadImage("data/a.png");
    image(a, 0, 0, 640, 480);
    //Texto
    fill (255);
    miFuente = createFont("data/osaka-re.ttf", 48);
    textFont( miFuente );
    textAlign (CENTER, CENTER);
    textSize(20);
    float y = map(contadorTiempo, 0, 100, 0, 400) ; //, 0, 150, 0, 400)
    text("Forest of Flowers and People: Lost, Immersed and Reborn\nToshiyuki Inoko, 21-06-18", width/2, y); // para: \ presionar alt gr y signo ?
  } else if ( numPantalla == 1 ) {

    //Pantalla Dos
    //Imagen
    PImage b = loadImage("data/b.png");
    image(b, 0, 0, 640, 480);
    float opacidad = map(contadorTiempo, 0, 100, 0, 255) ;
    float y = map(contadorTiempo, 0, 100, height/2, height/2+100) ;
    fill(0, opacidad);
    miFuente = createFont("data/Designer.otf", 48);
    textFont( miFuente );
    textAlign(CENTER, CENTER);
    textSize(30);
    text("Your Unexpected Encounter\nOlafur Eliasson, 7-06-24", width/2, y-20);
  } else if ( numPantalla == 2 ) {

    //Pantall Tres
    //Imagen
    PImage c = loadImage("data/c.jpg");
    image(c, 0, 0, 640, 480);
    fill(178, 79, 206);
    miFuente = createFont("data/PirataOne-Regular.ttf", 48);
    textFont( miFuente );
    textAlign(CENTER, CENTER);
    textSize(40);
    //no llegué a hacer la animación :<
    text("Los anillos de la serpiente, 2019\nEmiliano Causa y Matías Romero Costas", width/2, height/2+150);
  }

  //contador para aumentar el numPantalla:
  contadorTiempo++;
  if (contadorTiempo>30*2) {
    contadorTiempo = 0;

    numPantalla++;
    if ( numPantalla>2 ) {
      numPantalla = 2;
    }
  }
}

void mousePressed() {
  numPantalla++;
  contadorTiempo = 0;
  if ( numPantalla>2 ) {
    numPantalla = 0;
  }
}
