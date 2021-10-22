/***********************************************************************
 
 Dragon´s Breath
 
 Integrantes:
 - Andres Sebastian Landazabal Reyes
 - Edgar Daniel Gualdron
 
 Descripción:
 
 Dragon's Breath es un pequeño juego bullet hell donde el objetivo es de sobrevivir
 la mayor cantidad de tiempo posible sin chocarse con algun proyectil generado por el
 dragon
 
 Controles:
 
 Izquierda: Girar el personaje en sentido horario
 Derecha: Girar el personaje en sentido antihorario
 Arriba: Acercar el personaje al enemigo
 Abajo: Alejar el personaje del enemigo
 
 Se requiere la libreria Sound
 
 ***********************************************************************/

PantallasJ J;
Jugador P;
PImage fondo, fondo2;
int L, v1, v2, v, posi;
float X, Y, volum = 1;
Bala misBalas [];
PFont T, B;
PImage []ima;
import processing.sound.*;
SoundFile musica;

void setup()
{
  L = 799;
  v1 = 949;
  v2 = 1898;                            // Valores del movimiento de pantallas

  T = createFont("RampartOne-Regular.ttf", 50);
  B = createFont("RampartOne-Regular.ttf", 30);    // Tipografia de los textos
  size(800, 800);
  fondo= loadImage("fondomenu.png");
  J = new PantallasJ(0, 0, L, v1, v2, T, B);
  misBalas = new Bala[25];

  ima= new PImage [3];
  ima[0]=loadImage("enemigo1.png");
  ima[1]=loadImage("enemigo2.png");
  ima[2]=loadImage("enemigo3.png");

  for (int i = 0; i < 25; i++) {
    misBalas[i] = new Bala(1349, 400, 10);        // Creacion de las balas
  }

  P = new Jugador();

  musica = new SoundFile(this, "Mirag.mp3");  // Música del juego
  musica.loop();
}

void draw()
{

  J.display();
  J.move();              // Pantallas y Jugador
  P.controles();

  for (int i = 0; i < 25; i++)
  {
    misBalas[i].mostrar();
    misBalas[i].disparar();         // Balas del enemigo
  }

  if (J.A)
  {

    if (P.r == 100 || P.r == 150)
      image(ima[2], 240, 150, 300, 300); 

    if (P.r == 200 || P.r == 250)
      image(ima[0], 240, 150, 300, 300); // Posicion del enemigo

    if (P.r == 300 || P.r == 350)
      image(ima[1], 240, 150, 300, 300); 
  }
  if (J.C && mousePressed)  //Estamos en opciones
   {  
    if (dist(mouseX, mouseY, J.V1, J.V2) <= 25) 
     {
      J.V1 = constrain(mouseX, 250, 549);
      volum = map(J.V1, 250, 549, 0, 1);  // Rastreo de la palanca de volumen
     }
   }
   
  delay(50);
}

void keyPressed()
{

  P.moverJugador();       // Movimiento del jugador
}


void mouseReleased() {
  if (J.C)  //Estamos en opciones
  {  
    if (dist(mouseX, mouseY, J.V1, J.V2) <= 25)  // Palanca de volumen
    {
      musica.amp(volum);
    }
  }
}
void mousePressed() {
}
