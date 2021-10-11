
float X, Y, r = 250;
int v;
Bala misBalas [];
Jugador A;

void setup()
{

  size(800, 800);
  misBalas = new Bala[8];
 
  for (int i = 0; i < 8; i++) {
    misBalas[i] = new Bala(400, 400, 10, (int)random(10, 30));   // Creacion de las balas
  }

  A = new Jugador();
 
}

void draw()
{
  background(0, 0, 255);
  strokeWeight(16);
  strokeWeight(3);

  fill(0, 0, 255);
  for (int i = 0; i < 8; i++) {
    misBalas[i].mostrar(); 
    misBalas[i].disparar();
  }

  A.controles();
  for (int i = 0; i < 8; i++) {
    if ( dist(misBalas[i].x, misBalas[i].y, A.X, A.Y) < misBalas[i].diametro/2 + 20 ) {   // Colision con las balas
      exit();
    }
  }
  
  fill(0);
  ellipse(height/2, width/2, 40, 40); // Puesto del enemigo
}



void keyPressed() {

  A.moverJugador();  // Movimiento del jugador
}
