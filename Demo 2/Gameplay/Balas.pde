class Bala 
{
  
  int x, y, dx, dy, diametro;
  float cx, cy;
  
  Bala(int X, int Y, int DX, int diametro_)
  {
    x = X; y = Y; dx = DX; dy = DX; diametro = diametro_;
  }
  
  void mostrar()
  { 
    ellipse(x,y,diametro,diametro); // Bala
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
