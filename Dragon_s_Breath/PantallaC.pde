class PantallaC extends Pantalla
{
   PantallaC(int X, int Y, int W, int H)
           {
             super(X,Y,W,H); 
           }
  
   void move()
   {
      
   }
   
   void display()
   {
     fill(178,178,178);
     stroke(0);
     rect(x,y,w,h);
     rect(x+200,y+50,399,99);
   }
}
