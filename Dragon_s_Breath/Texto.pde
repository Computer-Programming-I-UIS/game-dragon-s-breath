class PantallasT extends Pantallas
{
 
  int j1 = 200 ,j2 = 300;       // Boton JUGAR
  int c1 = 250 ,c2 = 450;       //       CONTROLES
  int a1 = 250 ,a2 = 550;       //       AJUSTES
  int cr1 = 250,cr2 = 650;      //       CREDITOS
  int s1 = 650 ,s2 = 700;       //       SALIR
  int vc1 = 300, vc2 = 1649;    //       VOLVER en CONTROLES
  int va1 = 1249, va2 = 1649;   //                 AJUSTES
  int vcr1 = 2198, vcr2 = 1649; //                 CREDITOS
  int r1 = 2148,r2 = 500;       //       VOLVER A INTENTARLO
  int m1 = 2148,m2 = 600;       //       MENU PRINCIPAL
  float t;
  int p1 = 1249,p2 = 550;       // PRUEBA (ELIMINAR DESPUES)
  
  
  PantallasT(int X, int Y, int L, int V1, int V2, PFont TEXTO)
           {
             super(X,Y,L,V1,V2,TEXTO); 
           }
  
   void move()
   {
      if((mouseX > j1) && (mouseX < j1+399) && // Detecta si el mouse esta dentro de JUGAR
       (mouseY > j2) && (mouseY < j2+99))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x-=v1;
              j1-=v1;
              c1-=v1;
              a1-=v1;
             cr1-=v1;
              s1-=v1;
             vc1-=v1;
             va1-=v1;
            vcr1-=v1;
              r1-=v1;
              m1-=v1;
              p1-=v1;     
         }   
      }
      
     if((mouseX > c1) && (mouseX < c1+299) && // Detecta si el mouse esta dentro de CONTROLES
       (mouseY > c2) && (mouseY < c2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y-=v1;
              j2-=v1;
              c2-=v1;
              a2-=v1;
             cr2-=v1;
              s2-=v1;
             vc2-=v1;
             va2-=v1;
            vcr2-=v1;
              r2-=v1;
              m2-=v1;
              p2-=v1;
         }   
      }
      
     if((mouseX > a1) && (mouseX < a1+299) && // Detecta si el mouse esta dentro de AJUSTES
       (mouseY > a2) && (mouseY < a2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x-=v1;     y-=v1;
              j1-=v1;    j2-=v1;
              c1-=v1;    c2-=v1;
              a1-=v1;    a2-=v1;
             cr1-=v1;   cr2-=v1;
              s1-=v1;    s2-=v1;
             vc1-=v1;   vc2-=v1;
             va1-=v1;   va2-=v1;
            vcr1-=v1;  vcr2-=v1;
              r1-=v1;    r2-=v1;
              m1-=v1;    m2-=v1;
              p1-=v1;    p2-=v1;
         }  
      }
      
     if((mouseX > cr1) && (mouseX < cr1+299) && // Detecta si el mouse esta dentro de CREDITOS
       (mouseY > cr2) && (mouseY < cr2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x-=v2;     y-=v1;
              j1-=v2;    j2-=v1;
              c1-=v2;    c2-=v1;
              a1-=v2;    a2-=v1;
             cr1-=v2;   cr2-=v1;
              s1-=v2;    s2-=v1;
             vc1-=v2;   vc2-=v1;
             va1-=v2;   va2-=v1;
            vcr1-=v2;  vcr2-=v1;
              r1-=v2;    r2-=v1;
              m1-=v2;    m2-=v1;
              p1-=v2;    p2-=v1;
         }  
      }
      
     if((mouseX > vc1) && (mouseX < vc1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion CONTROLES
       (mouseY > vc2) && (mouseY < vc2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               y+=v1;
              j2+=v1;
              c2+=v1;
              a2+=v1;
             cr2+=v1;
              s2+=v1;
             vc2+=v1;
             va2+=v1;
            vcr2+=v1;
              r2+=v1;
              m2+=v1;
              p2+=v1;
         }   
      }
      
     if((mouseX > va1) && (mouseX < va1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion AJUSTES
       (mouseY > va2) && (mouseY < va2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x+=v1;     y+=v1;
              j1+=v1;    j2+=v1;
              c1+=v1;    c2+=v1;
              a1+=v1;    a2+=v1;
             cr1+=v1;   cr2+=v1;
              s1+=v1;    s2+=v1;
             vc1+=v1;   vc2+=v1;
             va1+=v1;   va2+=v1;
            vcr1+=v1;  vcr2+=v1;
              r1+=v1;    r2+=v1;
              m1+=v1;    m2+=v1;
              p1+=v1;    p2+=v1;
         }  
      }
      
     if((mouseX > vcr1) && (mouseX < vcr1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion CREDITOS
       (mouseY > vcr2) && (mouseY < vcr2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x+=v2;     y+=v1;
              j1+=v2;    j2+=v1;
              c1+=v2;    c2+=v1;
              a1+=v2;    a2+=v1;
             cr1+=v2;   cr2+=v1;
              s1+=v2;    s2+=v1;
             vc1+=v2;   vc2+=v1;
             va1+=v2;   va2+=v1;
            vcr1+=v2;  vcr2+=v1;
              r1+=v2;    r2+=v1;
              m1+=v2;    m2+=v1;
              p1+=v2;    p2+=v1;
         }   
      }
     
     if((mouseX > m1) && (mouseX < m1+299) && // Detecta si el mouse esta dentro de MENU PRINCIPAL
       (mouseY > m2) && (mouseY < m2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x+=v2;
              j1+=v2;
              c1+=v2;
              a1+=v2;
             cr1+=v2;
              s1+=v2;
             vc1+=v2;
             va1+=v2;
            vcr1+=v2;
              r1+=v2;
              m1+=v2;
              p1+=v2;     
            
         }   
      }
      
     if((mouseX > r1) && (mouseX < r1+299) && // Detecta si el mouse esta dentro de VOLVER A INTENTARLO
       (mouseY > r2) && (mouseY < r2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x+=v1;
              j1+=v1;
              c1+=v1;
              a1+=v1;
             cr1+=v1;
              s1+=v1;
             vc1+=v1;
             va1+=v1;
            vcr1+=v1;
              r1+=v1;
              m1+=v1;
              p1+=v1;     
         }   
      }
      
     if((mouseX > p1) && (mouseX < p1+399) && // BOTON PRUEBA (ELIMINAR DESPUES)
       (mouseY > p2) && (mouseY < p2+99))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
               x-=v1;
              j1-=v1;
              c1-=v1;
              a1-=v1;
             cr1-=v1;
              s1-=v1;
             vc1-=v1;
             va1-=v1;
            vcr1-=v1;
              r1-=v1;
              m1-=v1;
              p1-=v1;     
         }   
      }
      
     if((mouseX > s1) && (mouseX < s1+99) && // Detecta si el mouse esta dentro de CONTROLES
       (mouseY > s2) && (mouseY < s2+49))
      {
        if(mousePressed && (mouseButton == LEFT))
         {
            exit();
         }   
      }
   }
   
   void display()
   {
     t+=(1/60);
     stroke(255);
     fill(255);
     textSize(56);
     //textFont(texto);
     text(" DRAGON'S ",x+270,y+60,299,99);           // Letrero Dragon´s
     text(" BREATH ",x+295,y+160,299,99);            //         Breath
     text(" Controles ",x+280,y+1009,399,99);        //         Controles       
     text(" Ajustes ",x+1255,y+1009,399,99);         //         Ajustes
     text(" Creditos ",x+2190,y+1009,399,99);        //         Creditos
     text(" ¿Continuar? ",x+2148,y+350,299,99);      //         ¿Continuar?
     text(" JUGAR ",j1+100,j2+15,399,99);            // Boton JUGAR
     textSize(30);
     text(" CONTROLES ",c1+65,c2+5,299,49);          //       CONTROLES
     text(" AJUSTES ",a1+85,a2+5,299,49);            //       AJUSTES
     text(" CREDITOS ",cr1+75,cr2+5,299,49);         //       CREDITOS
     text(" SALIR ",s1+5,s2,99,49);                  //       SALIR
     text(" VOLVER ",vc1+45,vc2,199,49);             //       VOLVER en CONTROLES
     text(" VOLVER ",va1+45,va2,199,49);             //                 AJUSTES
     text(" VOLVER ",vcr1+45,vcr2,199,49);           //                 CREDITOS
     text(" VOLVER A INTENTARLO",r1,r2,299,49);      //       VOLVER A INTENTARLO
     text(" MENU PRINCIPAL",m1+35,m2,299,49);        //       MENU PRINCIPAL
     text(" PRUEBA",p1,p2,199,99);                   //       PRUEBA
     text(" Tiros Acertados: ",x+974,y+30,249,49);   // Letrero Tiros Acertados
     text(" Tiempo: ",x+1499,y+30,199,49);           //         Tiempo
     text(" Puntaje Total: ", x+2048,y+105,499,49);  //         Puntaje Total
     text(" Tiempo Final: ", x+2048,y+204,499,49);   //         Tiempo Final
   }
}
