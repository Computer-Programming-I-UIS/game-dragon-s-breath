class PantallaM extends Pantalla
{
   PantallaM(int X, int Y, int W, int H)
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
     rect(x+250,y+350,299,99);
     rect(x+250,y+500,299,49);
     rect(x+250,y+600,299,49);
   }
}
