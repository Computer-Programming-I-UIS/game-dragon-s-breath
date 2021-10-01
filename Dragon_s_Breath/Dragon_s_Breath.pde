PantallaI I;
PantallaJ J;
PantallaM M;
PantallaC C;
PantallaA A;
PantallaCR CR;

void setup()
{
  size(800,800);
  I = new PantallaI(0,0,799,799);
  J = new PantallaJ(949,0,799,799);
  M = new PantallaM(1898,0,799,799);
  C = new PantallaC(0,949,799,799);
  A = new PantallaA(949,949,799,799);
  CR = new PantallaCR(1898,949,799,799);
}

void draw()
{
  J.display();
  I.display();
  M.display();
  C.display();
  A.display();
  CR.display();
}
