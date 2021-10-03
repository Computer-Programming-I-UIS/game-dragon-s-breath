PantallaI I;
PantallaJ J;
PantallaM M;
PantallaC C;
PantallaA A;
PantallaCR CR;
int L, v1, v2;
PFont TA;

void setup()
{
  L = 799;
  v1 = 949; v2 = 1898;  // Valores del movimiento de pantallas
  TA = createFont("SourceCodePro-Regular.ttf", 32);
  size(2800,2800);
  I = new PantallaI(0,0,L,v1,v2,TA);
  J = new PantallaJ(949,0,L,v1,v2,TA);
  M = new PantallaM(1898,0,L,v1,v2,TA);
  C = new PantallaC(0,949,L,v1,v2,TA);
  A = new PantallaA(949,949,L,v1,v2,TA);
  CR = new PantallaCR(1898,949,L,v1,v2,TA);
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
  delay(30);
}
