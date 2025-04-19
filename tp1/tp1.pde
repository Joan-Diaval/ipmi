//Trabajo practico 1
PImage miFoto; 
miFoto = loadImage("foto_autoretrato.jpg"); 

size(800 , 400);
background(142,106,73);
noStroke();
fill(136,98,64);
rect(400,150,400,200);
fill(130,83,49);
rect(400,220,400,200);
fill(118,62,47);
rect(400,280,400,200);

translate(400, 0);

//ropa

pushMatrix();
fill(96,92,71);
rect(50,290,350,120,30,30,0,0);
rotate(PI/3);
rect(289,80,100,200);
popMatrix();
pushMatrix();
rotate(radians(PI-20));
rect(220,380,200,200);
popMatrix();
stroke(83,79,60);
strokeWeight(15);
arc(220,230,180,200,PI/4,3*PI/4);
triangle(50,350,50,400,60,400);
triangle(370,300,370,400,380,400);

//collar

pushMatrix();
noFill();
stroke(135,128,132);
strokeWeight(2);
arc(220,150,200,400,PI/4,3*PI/4);
translate(170,310);
scale(0.25);
fill(135,128,132);
ellipse(200-50/2, 190, 53, 50);
ellipse(200+50/2, 190, 53, 50);
triangle(200-50,200,200+50,200,200,200+50);
fill(0);
textSize(10);
translate(240,210);
scale(-5,5);
text("love",0,0);
popMatrix();

//cuello: 

noFill();
stroke(137,124,114);
strokeWeight(15);
arc(220,240,150,150,PI/4,3*PI/4);
strokeWeight(15);
arc(220,230,150,150,PI/4,3*PI/4);

//pelo (atras)

noStroke();
fill(26,28,29);
rect(100,260,60,50,0,0,100,50);
rect(280,260,20,50,0,0,100,50);

//cabeza:

noStroke ();
fill( 137 , 124 , 114 );
rect(160,200,120,100);
fill( 180 , 162 , 147 );
ellipse(220, 170 , 200 , 250);

//rostro: 
//ojos
fill(255);
rect(160,160,50,20);
rect(250,160,50,20);
fill(0);
ellipse(190,170,15,15);
ellipse(265,170,15,15);
rect(160,160,50,5,0,20,0,0);
rect(250,160,50,5,20,0,0,0);
fill(156 , 145 , 136);
arc(187,180,40,8,0,PI);
arc(267,180,40,8,0,PI);
//cejas
fill(26,28,29);
rect(160,140,50,5,0,20,0,0);
rect(250,140,50,5,20,0,0,0);
//boca
fill(178,142,140);
noStroke();
arc(220,250,55,10,-PI,0);
fill(171,134,137);
arc(220,250,60,30,0,PI);
fill(156 , 145 , 136);
arc(220,265,40,5,0,PI);
fill(135,128,132);
rect(195,250,5,13);
rect(240,250,5,13);
ellipse(190,235,3,3);
ellipse(255,260,2,2);
ellipse(247,270,2,2);
//nariz
fill(137 , 124 , 114);
triangle(230,180,250,230,220,230);
fill(197,183,172);
triangle(230,180,240,230,210,230);
fill(156 , 145 , 136);
triangle(214,220,210,230,220,230);

//pelo:

noStroke();
fill(26,28,29);
rect(150,40,150,50,100,100,100,100);
rect(100,50,100,100,100,100,100,100);
rect(90,100,100,100,100,100,100,100);
arc(200,100,100,100,10,30);
rect(90,80,80,200,100,100,100,100);
rect(290,80,40,200,100,100,100,100);
rect(230,50,80,50,100,100,100,100);
noFill();
stroke(26,28,29);
strokeWeight(2);
arc(200,120,80,100,-PI/2,PI/2);
arc(150,180,80,100,-PI/2,PI/2);
arc(147,179,80,100,-PI/2,PI/2);
arc(100,150,40,100,PI/2,3*PI/2);


translate(-400,0);
//cargar imagen
//Al final a proposito... Sino la ropa aparece por sobre la foto.
image( miFoto , 0 , 0 , 400 , 400 );
