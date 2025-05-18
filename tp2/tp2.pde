int numPantalla;
int contadorTiempo;
PImage diapositiva1;
PImage diapositiva2;
PImage diapositiva3;
PImage diapositiva4;
PImage diapositiva5;
PImage autor; 
float xPos = 0;
float yPos = 0;
PFont miFuente; 
PFont miFuente2; 



void setup() {
  size(640, 480);
  numPantalla = 0;
  contadorTiempo = 0;
  frameRate(30);
  diapositiva1 = loadImage("diapositiva1.jpg"); 
  diapositiva2 = loadImage("diapositiva2.jpg"); 
  diapositiva3 = loadImage("diapositiva3.jpg"); 
  diapositiva4 = loadImage("diapositiva4.jpg"); 
  diapositiva5 = loadImage("diapositiva5.jpg"); 
  autor = loadImage("autor.jpg"); 
  miFuente = createFont("data/Miskan.ttf",48);
  miFuente2 = createFont("data/BebasNeue-Regular.ttf",48);
}

void draw() {
  background(255);

  if ( numPantalla == 0 ) {
    //pantalla cero:
    image (diapositiva1 ,0,100,640,480);
    fill(0);
    rect(0,0,640,100);
    fill(255);
    textFont( miFuente );
    float sizeText = map(contadorTiempo, 0, 300, 5, 50);
  textSize(sizeText);
    text("VIDEOPLACE",110,50);
    textFont( miFuente2 );
    textSize(20);
    stroke(0);
    text("De Myron Krueger",110,150);
    textAlign(CENTER, CENTER);
    text("Es un sistema interactivo pionero en el arte\n electrónico que permite a los usuarios", width/2,190);
    text("interactuar en un entorno digital sin\n dispositivos físicos, como guantes o lentes.", width/2,260);
   } else if (numPantalla == 1) {
    // muestro la pantalla dos
    image(diapositiva3, 0, 0, 640, 480);
    fill(0);
    textAlign(CENTER, CENTER);

    // Incrementamos `xPos` solo si no ha alcanzado 200
    if (xPos < 300) {
      xPos += 3;  // Control de velocidad del movimiento
    }
    image (diapositiva2,50,250,520,200);
    fill(255);
    text("Creado en la década de 1970, cuando la computación gráfica\n aún estaba en desarrollo. Utiliza cámaras y proyectores para \ncapturar los movimientos de los participantes.\n Siendo el primer experimento en realidad artificial\n sin necesidad de gafas o guantes.",xPos, height / 3);
  } else if ( numPantalla == 2 ) {

    //muestro la pantalla uno:
    image (diapositiva4 ,0,0,640,480);
    float y =  map(contadorTiempo,0,150,height/2,height/2-140) ;
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(20);
    text("Transforma la silueta del usuario en elementos interactivos en\n la pantalla, posibilitando la comunicación visual con\n otros participantes en tiempo real y la interacción\n sin contacto.", width/2, y);

} else if (numPantalla == 3) {
  // Muestro la pantalla tres
  image(diapositiva5, 0, 0, 640, 480);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(20);
  if (yPos < 200) {
    yPos += 3;  // Velocidad del movimiento
  }

  text("También influyó en tecnologías como Kinect y la realidad aumentada.\nSu concepto de realidad artificial abrió nuevas posibilidades\npara el arte, el entretenimiento y la educación, convirtiendo\nal usuario en parte activa de la obra.", width/2, yPos);
  } else if ( numPantalla == 4 ) {
    //muestro la pantalla tres:
    background(0);
    image(autor ,0,0,320,480);
    fill(255);
    textSize(18);
    text("Para Krueger, el arte digital\n debía fomentar la comunicación\n humana más allá de la tecnología.\n Videoplace no solo exploraba \nla interacción virtual, sino que\n desafiaba la frontera entre\n espectador y creador, demostrando \nque el arte electrónico puede\n ser una extensión\n de la experiencia humana.", 500,200);
    stroke(255);
    fill(0);
    ellipse(600,400,60,60);
    ellipse(500,400,60,60);
    fill(255);
    textSize(15);
    text("INICIO",600,400);
    text("CERRAR",500,400);
    
  }

  //contador para aumentar el numPantalla:
  contadorTiempo++; 
  if (contadorTiempo>150) {
    //vuelvo el contador a 0:
    contadorTiempo = 0;
    
    numPantalla++;
    if ( numPantalla>4 ) {
      numPantalla = 4;
    }
  }
  
}

void mousePressed() {
  if (numPantalla == 4) {
    float distancia = dist(610, 400, mouseX, mouseY);
    if (distancia < 40) {
      numPantalla = 0;
      contadorTiempo = 0;  // Reiniciar el contador para evitar posiciones alteradas
      xPos = 0;            // Restablecer la posición horizontal
      yPos = 0;            // Restablecer la posición vertical
      
       }
    
    // boton salir:
    if (dist(510,400,mouseX,mouseY)<40){
      exit(); 
    }
  }
}
