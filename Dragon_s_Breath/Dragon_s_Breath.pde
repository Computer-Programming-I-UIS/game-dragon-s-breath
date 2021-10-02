PantallaI I;
PantallaJ J;
PantallaM M;
PantallaC C;
PantallaA A;
PantallaCR CR;
int L;

void setup()
{
  L = 799;
  size(800,800);
  I = new PantallaI(0,0,L,L);
  J = new PantallaJ(949,0,L,L);
  M = new PantallaM(1898,0,L,L);
  C = new PantallaC(0,949,L,L);
  A = new PantallaA(949,949,L,L);
  CR = new PantallaCR(1898,949,L,L);
}

void draw()
{
  background(0);
  J.display();
  J.move();
  M.display();
  M.move();
  C.display();
  C.move();
  A.display();
  A.move();
  CR.display();
  CR.move();
  I.display();
  I.move();
}
