class Jugador
{
  int pos;
  PImage []im;
  float X=400, Y=650;
  float angulo=0;

  Jugador() {
    pos = 0;
    im= new PImage [3];
    im[0]=loadImage("personaje1.png");
    im[1]=loadImage("personaje2.png");
    im[2]=loadImage("personaje3.png");
    
  }

  void controles()
  {
      
     if(J.A)
      {
      
        if (r == 350 || r == 300)
         fill(0, 255, 0);    // Verde

        if (r == 250 || r == 200)
         fill(255, 128, 0);  // Naranja

        if (r == 150 || r == 100)
         fill(255, 0, 0);    // Rojo
      
        X = 400 + r*sin(angulo);
        Y = 400 + r*cos(angulo);
        image(im[pos],X, Y, 70, 70); // jugador
  
      }
      else
     {
       angulo=0;
       r=350;
     }
     
  }

  void moverJugador() 
  {
    if (keyPressed && (key==CODED)) // Detecta las teclas para generar el movimiento
    {

      switch (keyCode)
      {

      case RIGHT:
        angulo = angulo + 0.05;
       /* pos++;
        if (pos<0)
        {
          pos =1;
        }*/


        break;

      case LEFT:
      angulo = angulo - 0.05;
      /* pos++;
        if (pos<3)
        {
          pos =2;
        }*/


        break;

      case UP:

        if (r !=100)
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
