/*

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

*/
PantallasJ J;
Jugador P;
int L, v1, v2, v;
float X, Y , r = 250;
Bala misBalas [];
PFont TA;

void setup()
{
  L = 799;
  v1 = 949; v2 = 1898;                                // Valores del movimiento de pantallas
  TA = createFont("SourceCodePro-Regular.ttf", 32);   // Tipografia de los textos
  size(800,800);
  J = new PantallasJ(0,0,L,v1,v2,TA);
  misBalas = new Bala[25];
  
  for (int i = 0; i < 25; i++) {
    misBalas[i] = new Bala(1349, 400, 10);   // Creacion de las balas
  }

  P = new Jugador();
}

void draw()
{
  background(0);
  J.display();
  J.move();
  P.controles();
  
  for (int i = 0; i < 25; i++) 
  {
    misBalas[i].mostrar(); 
    misBalas[i].disparar();
  }
  
  delay(50);
}

void keyPressed()
{
 
  P.moverJugador();
  
}
