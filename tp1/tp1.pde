size (800, 400);
background (206, 159, 40);
PImage miFoto = loadImage("Data/miFoto.jpg");
image(miFoto, 0, 0, 400, 400);
//Líneas guía
line (400, 0, 400, 400);
line (600, 0, 600, 600); //1/4
line (400, 200, 800, 200); // 1/2
//-----------------------------------------------------------------
//Torso
noStroke ();
fill (165, 165, 165);
ellipse (600, 380, 340, 200);
//-----------------------------------------------------------------
//Pelo
fill (31, 22, 23); //Color de pelo
//Pelo de atrás
strokeWeight (25);
stroke (31, 22, 23);
ellipse (600, 170, 165, 200);
strokeWeight (1);
//Lado Izquierdo
ellipse (530, 235, 100, 140);
ellipse (540, 280, 50, 100);
//Lado Derceho
rect (650, 170, 60, 120, 180, 180, 180, 180);
ellipse (655, 280, 50, 110);
//-----------------------------------------------------------------
//Cabeza
noStroke ();
fill (193, 139, 121); //Color del cuello
rect (565, 250, 70, 65, 0, 0, 100, 100); //Cuello
fill (202, 170, 159); //Color de la cara
ellipse (600, 170, 150, 200); //cara
//-----------------------------------------------------------------
//Cejas
fill (31, 22, 23);
bezier (590, 145, 580, 135, 590, 135, 550, 145); //Izquierda
bezier (610, 145, 610, 135, 620, 135, 650, 145); //Derecha
//-----------------------------------------------------------------
//Flequillo
//Izquierda
bezier (500, 190, 530, 95, 490, 120, 600, 60);
//Derecha
bezier (655, 80, 640, 120, 650, 130, 710, 200);
bezier (600, 60, 670, 70, 665, 75, 675, 110);
noFill ();
//-----------------------------------------------------------------
//Ojos
fill (255, 255, 255);
ellipse (562, 172, 35, 15); //Ojo izquierdo
ellipse (638, 172, 35, 15); //Ojo derecho
fill (0, 0, 0);
ellipse (562, 169, 16, 16); //Ojo izquierdo
ellipse (638, 169, 16, 16); //Ojo derecho
fill (202, 170, 159);
ellipse (562, 162, 15, 5); //Ojo izquierdo
ellipse (638, 162, 15, 5); //Ojo derecho
fill (255, 255, 255);
ellipse (569, 169, 13, 5); //Ojo izquierdo
ellipse (645, 169, 13, 5); //Ojo derecho
noFill ();
//-----------------------------------------------------------------
//Anteojos
strokeWeight (4);
stroke (0, 0, 0);
line (590, 162, 610, 162);
rect (530, 155, 60, 40, 70, 6, 60, 30); //Marco izquierdo
rect (610, 155, 60, 40, 6, 70, 30, 60); //Marco derecho
noStroke ();
strokeWeight (1);
//-----------------------------------------------------------------
//Nariz
fill (193, 139, 121);
triangle (592, 196, 600, 194, 597, 203);
strokeWeight (2);
stroke (170, 129, 110);
line (597, 175, 600, 189); //Línea superior
line (601, 194, 597, 202); //Línea inferior
noStroke ();
//-----------------------------------------------------------------
//Boca
fill (2014, 138, 117);
bezier (580, 230, 595, 220, 595, 220, 610, 230); //Labio superior izquierdo
bezier (590, 230, 605, 220, 605, 220, 620, 230); //Labio superior derecho
bezier (580, 231, 600, 241, 600, 241, 620, 231); //Labio inferior
stroke (203, 129, 109);
line (581, 230, 619, 230); //Separación
