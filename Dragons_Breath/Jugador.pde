class Jugador
{
  int pos;
  PImage []im;
  float X=400, Y=650;  // Datos del jugador
  float angulo=0;

  Jugador() {
    pos = 0;
    im= new PImage [3];
    im[0]=loadImage("jugador1.png");
    im[1]=loadImage("jugador2.png");   // Sprites del jugador
    im[2]=loadImage("jugador3.png");
    
  }

  void controles()
  {
      
     if(J.A)
      {
      
        X = 400 + r*sin(angulo);
        Y = 400 + r*cos(angulo);           // Posicion del jugador
        image(im[pos],X-40, Y-40, 70, 70); 
  
      }
      
     else
        {
          angulo=0;
          r=350;
        }
  }

  void moverJugador() 
  {
    if (keyPressed && (key==CODED)) // Movimientos del jugador
    {

      switch (keyCode)
           {

              case RIGHT:
              
              angulo = angulo + 0.05;

              break;


              case LEFT:
      
              angulo = angulo - 0.05;

              break;


              case UP:

              if(r !=100)
               {
                 r-=50;
               }

              break;


              case DOWN:

              if (r !=350)
               {
                 r+=50;
               }

               break;
           }
    }
  }
}
