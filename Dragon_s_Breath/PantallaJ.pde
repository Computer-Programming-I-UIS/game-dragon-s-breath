class PantallaJ extends Pantalla
{
  
  int j1 = 200 ,j2 = 350;       // Boton JUGAR
  int c1 = 250 ,c2 = 500;       //       CONTROLES
  int a1 = 250 ,a2 = 600;       //       AJUSTES
  int cr1 = 250,cr2 = 700;      //       CREDITOS
  int s1 = 650 ,s2 = 700;       //       SALIR
  int vc1 = 300, vc2 = 1649;    //       VOLVER en CONTROLES
  int va1 = 1249, va2 = 1649;   //                 AJUSTES
  int vcr1 = 2198, vcr2 = 1649; //                 CREDITOS
  int r1 = 2148,r2 = 500;       //       VOLVER A INTENTARLO
  int m1 = 2148,m2 = 600;       //       MENU PRINCIPAL
  int p1 = 1249,p2 = 350;       // PRUEBA (ELIMINAR DESPUES)
  
  
   PantallaJ(int X, int Y, int W, int H)
           {
             super(X,Y,W,H); 
           }
  
   void move()
   {
      if((mouseX > j1) && (mouseX < j1+399) && // Detecta si el mouse esta dentro de JUGAR
       (mouseY > j2) && (mouseY < j2+99))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x-=949;
              j1-=949;
              c1-=949;
              a1-=949;
             cr1-=949;
              s1-=949;
             vc1-=949;
             va1-=949;
            vcr1-=949;
              r1-=949;
              m1-=949;
              p1-=949;
            
         }   
      }
      
     if((mouseX > c1) && (mouseX < c1+299) && // Detecta si el mouse esta dentro de CONTROLES
       (mouseY > c2) && (mouseY < c2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y-=949;
              c2-=949;
              j2-=949;
              a2-=949;
             cr2-=949;
              s2-=949;
             vc2-=949;
             va2-=949;
            vcr2-=949;
              r2-=949;
              m2-=949;
              p2-=949;
         }   
      }
      
     if((mouseX > a1) && (mouseX < a1+299) && // Detecta si el mouse esta dentro de AJUSTES
       (mouseY > a2) && (mouseY < a2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y-=949;
               x-=949;
              a2-=949;
              a1-=949;
              c2-=949;
              c1-=949;
              j2-=949;
              j1-=949;
             cr2-=949;
             cr1-=949;
              s2-=949;
              s1-=949;
             vc2-=949;
             vc1-=949;
             va2-=949;
             va1-=949;
            vcr2-=949;
            vcr1-=949;
              r1-=949;
              r2-=949;
              m1-=949;
              m2-=949;
         }  
      }
      
     if((mouseX > cr1) && (mouseX < cr1+299) && // Detecta si el mouse esta dentro de CREDITOS
       (mouseY > cr2) && (mouseY < cr2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y-=949;
               x-=1898;
              a2-=949;
              a1-=1898;
              c2-=949;
              c1-=1898;
              j2-=949;
              j1-=1898;
             cr2-=949;
             cr1-=1898;
              s2-=949;
              s1-=1898;
             vc2-=949;
             vc1-=1898;
             va2-=949;
             va1-=1898;
            vcr2-=949;
            vcr1-=1898;
            r2-=949;
            r1-=1898;
            m2-=949;
            m1-=1898;
            p2-=949;
            p1-=1898;
         }  
      }
      
     if((mouseX > vc1) && (mouseX < vc1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion CONTROLES
       (mouseY > vc2) && (mouseY < vc2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y+=949;
              c2+=949;
              j2+=949;
              a2+=949;
             cr2+=949;
              s2+=949;
             vc2+=949;
             va2+=949;
            vcr2+=949;
              r2+=949;
              m2+=949;
              p2+=949;
         }   
      }
      
     if((mouseX > va1) && (mouseX < va1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion AJUSTES
       (mouseY > va2) && (mouseY < va2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y+=949;
               x+=949;
              a2+=949;
              a1+=949;
              c2+=949;
              c1+=949;
              j2+=949;
              j1+=949;
             cr2+=949;
             cr1+=949;
              s2+=949;
              s1+=949;
             vc1+=949;
             vc2+=949;
             va1+=949;
             va2+=949;
            vcr1+=949;
            vcr2+=949;
            r1+=949;
            r2+=949;
            m1+=949;
            m2+=949;
            p1+=949;
            p2+=949;
         }  
      }
      
     if((mouseX > vcr1) && (mouseX < vcr1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion CREDITOS
       (mouseY > vcr2) && (mouseY < vcr2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y+=949;
               x+=1898;
             cr2+=949;
             cr1+=1898;
              a2+=949;
              a1+=1898;
              c2+=949;
              c1+=1898;
              j2+=949;
              j1+=1898;
              s2+=949;
              s1+=1898;
             vc1+=1898;
             vc2+=949;
             va1+=1898;
             va2+=949;
            vcr1+=1898;
            vcr2+=949;
            r1+=1898;
            r2+=949;
            m1+=1898;
            m2+=949;
            p1+=1898;
            m2+=949;
            
         }   
      }
     
     if((mouseX > m1) && (mouseX < m1+299) && // Detecta si el mouse esta dentro de MENU PRINCIPAL
       (mouseY > m2) && (mouseY < m2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x+=1898;
              j1+=1898;
              c1+=1898;
              a1+=1898;
             cr1+=1898;
              s1+=1898;
             vc1+=1898;
             va1+=1898;
            vcr1+=1898;
             r1+=1898;
             m1+=1898;
             p1+=1898;
            
         }   
      }
      
     if((mouseX > r1) && (mouseX < r1+299) && // Detecta si el mouse esta dentro de VOLVER A INTENTARLO
       (mouseY > r2) && (mouseY < r2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x+=949;
              j1+=949;
              c1+=949;
              a1+=949;
             cr1+=949;
              s1+=949;
             vc1+=949;
             va1+=949;
            vcr1+=949;
             r1+=949;
             m1+=949;
             p1+=949;
            
         }   
      }
      
     if((mouseX > p1) && (mouseX < p1+399) && // BOTON PRUEBA (ELIMINAR DESPUES)
       (mouseY > p2) && (mouseY < p2+99))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x-=949;
              j1-=949;
              c1-=949;
              a1-=949;
             cr1-=949;
              s1-=949;
             vc1-=949;
             va1-=949;
            vcr1-=949;
              r1-=949;
              m1-=949;
              p1-=949;
            
         }   
      }
     delay(100);
   }
   
   void display()
   {
     fill(178,178,178);
     stroke(0);
     rect(x,y,w,h);
     rect(p1,p2,199,99);
   }
}
