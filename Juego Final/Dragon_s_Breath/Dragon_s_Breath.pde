/*

Proyecto Dragon´s Breath

Integrantes:
- Andres Sebastian Landazabal Reyes
- Edgar Daniel Gualdron

Descripción:



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
  misBalas = new Bala[12];
  
  for (int i = 0; i < 12; i++) {
    misBalas[i] = new Bala(400, 400, 10, (int)random(10, 30));   // Creacion de las balas
  }

  P = new Jugador();
}

void draw()
{
  background(0);
  J.display();
  J.move();
  P.controles();
  
  for (int i = 0; i < 12; i++) 
  {
    misBalas[i].mostrar(); 
    misBalas[i].disparar();
  }
  
  for (int i = 0; i < 12; i++) 
  {
    if ( dist(misBalas[i].x, misBalas[i].y, P.x, P.y) < misBalas[i].diametro/2 + 20 )  // Colision con las balas
    {   
      exit();
    }
  }
  
  delay(50);
}

void keyPressed()
{
 
  P.moverJugador();
  
}
