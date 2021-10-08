class Jugador
{
  
  float X=400, Y=650, x=400, y=650;
  
  Jugador(){}
  
  void controles()
  {
   
    if(keyPressed && (key==CODED)) // Detecta las teclas
     {
      
       switch (keyCode)
       {
        
         case RIGHT:
         
         X = 400 + r*sin(frameCount*0.05);
         Y = 400 + r*cos(frameCount*0.05);
         x = 400 + r*cos(frameCount*0.05);
         y = 400 + r*sin(frameCount*0.05);
         
         break;
         
         case LEFT:
         
         X = 400 + r*cos(frameCount*0.05);
         Y = 400 + r*sin(frameCount*0.05);
         x = 400 + r*sin(frameCount*0.05);
         y = 400 + r*cos(frameCount*0.05);
         
         break;
         
         case UP:
         
          if(r !=100)
         {
          r-=50;
         }

         break;
         
         case DOWN:
           
           if(r !=350)
         {
           r+=50;
         }
         
         break;
         
       }
     
     }
     
     if(r == 350 || r == 300)
     fill(0,255,0);    // Verde
     
     if(r == 250 || r == 200)
     fill(255,128,0);  // Naranja
     
     if(r == 150 || r == 100)
     fill(255,0,0);    // Rojo
     
     ellipse(x,y,1,1);
     ellipse(X,Y,40,40);
    
  }
  
}
