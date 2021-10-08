class Bala 
{
  
  int x, y, dx, dy;
  float cx, cy;
  
  Bala(int X, int Y, int DX)
  {
    x = X; y = Y; dx = DX; dy = DX;
  }
  
  void mostrar()
  { 
    ellipse(x,y,15,15); // Bala
  }
  
  void disparar()
     { 
       
       x+=cx;
       y+=cy;
       
       if(x > 800 || x < 0) // Si X se sale de la pantalla
        {
         x=400;
         y=400;
        }
       
       if(y > 800 || y < 0) // Si Y se sale de la pantalla
        {
         x=400;
         y=400;
        }
       
       if(x == 400)
       cx=random(-dx,dx); // Direccion random para X de la bala
       
       if(y == 400)
       cy=random(-dy,dy); // Direccion random para Y de la bala
     
     }
}
