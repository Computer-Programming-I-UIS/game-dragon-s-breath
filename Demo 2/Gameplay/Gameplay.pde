float X, Y, r = 250;
int v;
Bala A1; Bala A2; Bala A3; Bala A4; Bala A5; Bala A6; Bala A7; Bala A8;
Jugador A;

void setup()
{
  
  size(800,800);
  A1 = new Bala(400,400,10);
  A2 = new Bala(400,400,10);
  A3 = new Bala(400,400,10);
  A4 = new Bala(400,400,10); // Creacion de las balas
  A5 = new Bala(400,400,10);
  A6 = new Bala(400,400,10);
  A7 = new Bala(400,400,10);
  A8 = new Bala(400,400,10);
  A = new Jugador();
  frameRate(30);

}

void draw()
{
 
  background(0,0,255);
  strokeWeight(16);
  strokeWeight(3);
  //line(0,400,800,400);
  //line(400,0,400,800);
  fill(0,0,255);
  
  A1.mostrar();
  A1.disparar();
  A2.mostrar();
  A2.disparar();
  A3.mostrar();
  A3.disparar();
  A4.mostrar();
  A4.disparar();
  A5.mostrar();
  A5.disparar();
  A6.mostrar();
  A6.disparar();
  A7.mostrar();
  A7.disparar();
  A8.mostrar();
  A8.disparar();
  A.controles();
  
  fill(0);
  ellipse(height/2,width/2,40,40); // Enemigo ejemplo
  
}
