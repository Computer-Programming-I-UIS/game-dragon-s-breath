class PantallaI extends Pantalla
{
   PantallaI(int X, int Y, int W, int H)
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
     rect(x+250,y+50,299,99);
     rect(x+250,y+150,299,99);
     rect(x+200,y+350,399,99);
     rect(x+250,y+500,299,49);
     rect(x+250,y+600,299,49);
     rect(x+250,y+700,299,49);
     rect(x+650,y+700,99,49);
     
   }
  
}
