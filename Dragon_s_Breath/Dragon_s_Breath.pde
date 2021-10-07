/*

Proyecto Dragon´s Breath

Integrantes:
- Andres Sebastian Landazabal Reyes
- Edgar Daniel Gualdron

Descripción:



*/
PantallasJ J;
PantallasT T;
int L, v1, v2;
PFont TA;

void setup()
{
  L = 799;
  v1 = 949; v2 = 1898;                                // Valores del movimiento de pantallas
  TA = createFont("SourceCodePro-Regular.ttf", 32);   // Tipografia de los textos
  size(800,800);
  J = new PantallasJ(0,0,L,v1,v2,TA);
  T = new PantallasT(0,0,L,v1,v2,TA);
}

void draw()
{
  background(0);
  J.display();
  J.move();
  T.display();
  T.move();
  delay(50);
}
