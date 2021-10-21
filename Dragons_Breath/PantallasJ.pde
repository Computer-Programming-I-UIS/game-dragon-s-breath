class PantallasJ extends Pantallas
{
  PImage fondo;
  PImage fondo2;
  int j1 = 200, j2 = 300;       // Boton JUGAR
  int c1 = 250, c2 = 450;       //       CONTROLES
  int a1 = 250, a2 = 550;       //       AJUSTES
  int s1 = 350, s2 = 650;       //       SALIR
  int vc1 = 300, vc2 = 1649;    //       VOLVER en CONTROLES
  int va1 = 1249, va2 = 1649;   //                 AJUSTES
  int vcr1 = 2198, vcr2 = 1649; //                 CREDITOS
  int r1 = 2108, r2 = 500;       //       VOLVER A INTENTARLO
  int m1 = 2148, m2 = 600;       //       MENU PRINCIPAL
  float t;
  int b, p;
  boolean A;
  


  PantallasJ(int X, int Y, int L, int V1, int V2, PFont T, PFont B)
  {
    super(X, Y, L, V1, V2, T, B);
    fondo= loadImage("fondomenu.png");
    fondo2= loadImage("fondodejuego.png");
  }

  void move()
  {
    if ((mouseX > j1) && (mouseX < j1+399) && // Boton JUGAR
      (mouseY > j2) && (mouseY < j2+99))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x-=v1;
        j1-=v1;
        c1-=v1;
        a1-=v1;
        s1-=v1;
        vc1-=v1;
        va1-=v1;
        vcr1-=v1;
        r1-=v1;
        m1-=v1;
        t=0;
        A=true;
      }
    }

    if ((mouseX > c1) && (mouseX < c1+299) && // Boton CONTROLES
      (mouseY > c2) && (mouseY < c2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        y-=v1;
        j2-=v1;
        c2-=v1;
        a2-=v1;
        s2-=v1;
        vc2-=v1;
        va2-=v1;
        vcr2-=v1;
        r2-=v1;
        m2-=v1;
      }
    }

    if ((mouseX > a1) && (mouseX < a1+299) && // Boton AJUSTES
      (mouseY > a2) && (mouseY < a2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x-=v1;
        y-=v1;
        j1-=v1;
        j2-=v1;
        c1-=v1;
        c2-=v1;
        a1-=v1;
        a2-=v1;
        s1-=v1;
        s2-=v1;
        vc1-=v1;
        vc2-=v1;
        va1-=v1;
        va2-=v1;
        vcr1-=v1;
        vcr2-=v1;
        r1-=v1;
        r2-=v1;
        m1-=v1;
        m2-=v1;
      }
    }

    if ((mouseX > vc1) && (mouseX < vc1+199) && // Boton VOLVER de la seccion CONTROLES
      (mouseY > vc2) && (mouseY < vc2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        y+=v1;
        j2+=v1;
        c2+=v1;
        a2+=v1;
        s2+=v1;
        vc2+=v1;
        va2+=v1;
        vcr2+=v1;
        r2+=v1;
        m2+=v1;
      }
    }

    if ((mouseX > va1) && (mouseX < va1+199) && // Boton VOLVER de la seccion AJUSTES
      (mouseY > va2) && (mouseY < va2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x+=v1;
        y+=v1;
        j1+=v1;
        j2+=v1;
        c1+=v1;
        c2+=v1;
        a1+=v1;
        a2+=v1;
        s1+=v1;
        s2+=v1;
        vc1+=v1;
        vc2+=v1;
        va1+=v1;
        va2+=v1;
        vcr1+=v1;
        vcr2+=v1;
        r1+=v1;
        r2+=v1;
        m1+=v1;
        m2+=v1;
      }
    }

    if ((mouseX > m1) && (mouseX < m1+299) && // Boton MENU PRINCIPAL
      (mouseY > m2) && (mouseY < m2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x+=v2;
        j1+=v2;
        c1+=v2;
        a1+=v2;
        s1+=v2;
        vc1+=v2;
        va1+=v2;
        vcr1+=v2;
        r1+=v2;
        m1+=v2;
      }
    }

    if ((mouseX > r1) && (mouseX < r1+299) && // Boton VOLVER A INTENTARLO
      (mouseY > r2) && (mouseY < r2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x+=v1;
        j1+=v1;
        c1+=v1;
        a1+=v1;
        s1+=v1;
        vc1+=v1;
        va1+=v1;
        vcr1+=v1;
        r1+=v1;
        m1+=v1;
        t=0;
        A=true;
      }
    }

    if ((mouseX > s1) && (mouseX < s1+99) && // Boton SALIR
      (mouseY > s2) && (mouseY < s2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        exit();
      }
    }

    if (A)
    {
      t+=(1.0/15);
                     // Tiempo y puntaje del jugador
      p += (t*0.5);

      for (int i = 0; i < 25; i++)
      {
        if ( dist(misBalas[i].x, misBalas[i].y, P.X, P.Y) < misBalas[i].diametro/2 + 20 )  // Colision con las balas
        {

          x-=v1;
          j1-=v1;
          c1-=v1;
          a1-=v1;
          s1-=v1;
          vc1-=v1;
          va1-=v1;
          vcr1-=v1;
          r1-=v1;
          m1-=v1;
          A=false;
        }
      }
    }
  }

  void display()
  {

    fill(0);
    
    image(fondo,x, y, l, l);
    image(fondo2,x+v1, y, l, l);
    /*image(fondo,x+v2, y, l, l);     // Imagen del fondo de pantalla
    image(fondo,x, y+v1, l, l);
    image(fondo,x+v1, y+v1, l, l);*/
    rect(x+v2, y, l, l);         
    rect(x, y+v1, l, l);         
    rect(x+v1, y+v1, l, l);      
    
    stroke(255);
    
    fill(152,152,152);
    rect(j1, j2, 399, 99);        
    rect(c1, c2, 299, 49);         
    rect(a1, a2, 299, 49);        
    rect(s1, s2, 99, 49);         
    rect(vc1+25, vc2, 199, 49);   
    rect(va1+25, va2, 199, 49);                         // Visual del boton
    rect(vcr1, vcr2, 199, 49);    
    rect(r1, r2, 379, 49);        
    rect(m1, m2, 299, 49);        
    
    line(x+1199, y+1449, x+1498, y+1449);  // Barra del volumen
    ellipse(x+1498, y+1449, 50, 50);

    textFont(T);
    fill(0,0,255);
    
    text(" DRAGON'S ", x+270, y+60, 299, 99);           // Titulo del juego
    text(" BREATH ", x+295, y+160, 299, 99);   
    
    fill(255);
    
    text(" Controles ", x+260, y+1000, 399, 99);       
    text(" Ajustes ", x+1250, y+1000, 399, 99);         // Titulos de las pantallas
    text(" Música ", x+1250, y+1300, 399, 99);
    text(" ¿Continuar? ", x+2108, y+350, 339, 99);      
    
    fill(0);
    
    text(" JUGAR ", j1+100, j2+15, 399, 99);            // Boton JUGAR
    
    textFont(B);

    text(" Tiempo: ", x+1199, y+30, 199, 49);         // Tiempo en el juego
    text((t), x+1358, y+69);   
    
    text(" CONTROLES ", c1+45, c2, 299, 49);
    text(" AJUSTES ", a1+70, a2, 299, 49);  
    text(" VOLVER ", vc1+55, vc2, 199, 49);                          
    text(" VOLVER ", va1+55, va2, 199, 49);            // Botones
    text(" VOLVER A INTENTARLO", r1, r2, 379, 49);    
    text(" MENU PRINCIPAL", m1+5, m2, 299, 49);    
    text(" SALIR ", s1-5, s2, 104, 49);         
    
    fill(255);
    
    text(" Flecha Derecha: Girar en sentido de", x+30, y+1149);
    text(" las manecillas del reloj ", x+30, y+1199);
    text(" Flecha Izquierda: Girar en sentido contrario ", x+30, y+1269);    // Datos en Controles
    text(" de las  manecillas del reloj ", x+30, y+1319);
    text(" Flecha Arriba: Acercarse al enemigo ", x+30, y+1399);
    text(" Flecha Abajo: Alejarse del enemigo ", x+30, y+1469);

    text(" Puntaje Total: ", x+2048, y+105, 499, 49);
    text(" Tiempo Final: ", x+2048, y+204, 499, 49);  // Datos de la pantalla de muerte
    text((t), x+2278, y+243);                        
    text((p), x+2298, y+144);          
    
  }
}
