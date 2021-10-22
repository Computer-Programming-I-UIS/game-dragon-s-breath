class Bala
{

  int x, y, dx, dy;
  float cx, cy, diametro;
  PImage Fuego;

  Bala(int X, int Y, int DX)
  {
    x = X;
    y = Y;
    dx = DX;
    dy = DX;
    Fuego=loadImage("balaxd.png");
  }

  void mostrar()
  {


    if (J.A)
    {

      fill(255, 0, 0);
      image(Fuego,x, y, diametro, diametro); // Bala

      fill(0);
      
    } else
    {
      x=400;
      y=400;
      cx=random(-dx, dx); // Direccion random para X de la bala
      cy=random(-dy, dy); // Direccion random para Y de la bala
    }
  }

  void disparar()
  {



    if (J.A)
    {

      x+=cx;
      y+=cy;

      if (x > 800 || x < 0) // Si X se sale de la pantalla
      {
        x=400;
        y=400;
        diametro=random(10, 30);
      }

      if (y > 800 || y < 0) // Si Y se sale de la pantalla
      {
        x=400;
        y=400;
        diametro=random(10, 30);
      }

      if (x == 400)
      {
        cx=random(-dx, dx); // Direccion random para X de la bala
      }

      if (y == 400)
      {
        cy=random(-dy, dy); // Direccion random para Y de la bala
      }
    } else
    {
      diametro=random(10, 30);
    }
  }
}
