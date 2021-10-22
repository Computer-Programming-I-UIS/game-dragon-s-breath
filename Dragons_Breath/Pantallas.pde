class Pantallas // Super clase para todas las pantallas del juego
{
  int x,y,l,v1,v2; 
  PFont titulo, boton;
  
  Pantallas(int X, int Y, int L, int V1, int V2, PFont T, PFont B)
  {

    x=X;    y=Y;
   v1=V1;  v2=V2;
    l=L;   titulo=T;
    boton=B;
   
  }
}
