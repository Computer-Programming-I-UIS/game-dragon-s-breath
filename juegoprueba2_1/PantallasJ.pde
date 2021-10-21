class PantallasJ extends Pantallas
{
  PImage fondo;
  PImage fondo2;
  int j1 = 200, j2 = 300;       // Boton JUGAR
  int c1 = 250, c2 = 450;       //       CONTROLES
  int a1 = 250, a2 = 550;       //       AJUSTES
  int cr1 = 250, cr2 = 650;      //       CREDITOS
  int s1 = 650, s2 = 700;       //       SALIR
  int vc1 = 300, vc2 = 1649;    //       VOLVER en CONTROLES
  int va1 = 1249, va2 = 1649;   //                 AJUSTES
  int vcr1 = 2198, vcr2 = 1649; //                 CREDITOS
  int r1 = 2148, r2 = 500;       //       VOLVER A INTENTARLO
  int m1 = 2148, m2 = 600;       //       MENU PRINCIPAL
  float t;
  int b, p;
  boolean A;
  


  PantallasJ(int X, int Y, int L, int V1, int V2, PFont TEXTO)
  {
    super(X, Y, L, V1, V2, TEXTO);
    fondo= loadImage("fondodejuego.png");
    fondo2= loadImage("fondomenu.png");
  }

  void move()
  {
    if ((mouseX > j1) && (mouseX < j1+399) && // Detecta si el mouse esta dentro de JUGAR
      (mouseY > j2) && (mouseY < j2+99))
    {
      if (mousePressed && (mouseButton == LEFT))
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
        t=0;
        A=true;
      }
    }

    if ((mouseX > c1) && (mouseX < c1+299) && // Detecta si el mouse esta dentro de CONTROLES
      (mouseY > c2) && (mouseY < c2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
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
      }
    }

    if ((mouseX > a1) && (mouseX < a1+299) && // Detecta si el mouse esta dentro de AJUSTES
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
        cr1-=v1;
        cr2-=v1;
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

    if ((mouseX > cr1) && (mouseX < cr1+299) && // Detecta si el mouse esta dentro de CREDITOS
      (mouseY > cr2) && (mouseY < cr2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x-=v2;
        y-=v1;
        j1-=v2;
        j2-=v1;
        c1-=v2;
        c2-=v1;
        a1-=v2;
        a2-=v1;
        cr1-=v2;
        cr2-=v1;
        s1-=v2;
        s2-=v1;
        vc1-=v2;
        vc2-=v1;
        va1-=v2;
        va2-=v1;
        vcr1-=v2;
        vcr2-=v1;
        r1-=v2;
        r2-=v1;
        m1-=v2;
        m2-=v1;
      }
    }

    if ((mouseX > vc1) && (mouseX < vc1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion CONTROLES
      (mouseY > vc2) && (mouseY < vc2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
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
      }
    }

    if ((mouseX > va1) && (mouseX < va1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion AJUSTES
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
        cr1+=v1;
        cr2+=v1;
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

    if ((mouseX > vcr1) && (mouseX < vcr1+199) && // Detecta si el mouse esta dentro de VOLVER de la seccion CREDITOS
      (mouseY > vcr2) && (mouseY < vcr2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
      {
        x+=v2;
        y+=v1;
        j1+=v2;
        j2+=v1;
        c1+=v2;
        c2+=v1;
        a1+=v2;
        a2+=v1;
        cr1+=v2;
        cr2+=v1;
        s1+=v2;
        s2+=v1;
        vc1+=v2;
        vc2+=v1;
        va1+=v2;
        va2+=v1;
        vcr1+=v2;
        vcr2+=v1;
        r1+=v2;
        r2+=v1;
        m1+=v2;
        m2+=v1;
      }
    }

    if ((mouseX > m1) && (mouseX < m1+299) && // Detecta si el mouse esta dentro de MENU PRINCIPAL
      (mouseY > m2) && (mouseY < m2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
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
      }
    }

    if ((mouseX > r1) && (mouseX < r1+299) && // Detecta si el mouse esta dentro de VOLVER A INTENTARLO
      (mouseY > r2) && (mouseY < r2+49))
    {
      if (mousePressed && (mouseButton == LEFT))
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
        t=0;
        A=true;
      }
    }

    if ((mouseX > s1) && (mouseX < s1+99) && // Detecta si el mouse esta dentro de SALIR
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

      p += (t*0.005);

      for (int i = 0; i < 25; i++)
      {
        if ( dist(misBalas[i].x, misBalas[i].y, P.X, P.Y) < misBalas[i].diametro/2 + 20 )  // Colision con las balas
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
          A=false;
        }
      }
    }
  }

  void display()
  {
    // image(fondo,0,0,800,800);
    fill(0);
    stroke(0);
    image(fondo2,x, y, l, l);
   // rect(x, y, l, l);             // Pantalla de Inicio
   //rect(x+v1, y, l, l);          //             Juego
   image(fondo,x+v1, y, l, l);
    rect(x+v2, y, l, l);          //             Muerte
    rect(x, y+v1, l, l);          //             Controles
    rect(x+v1, y+v1, l, l);       //             Ajustes
    rect(x+v2, y+v1, l, l);       //             Creditos
    stroke(255);
    rect(x+250, y+50, 299, 99);    // Letrero Dragon´s
    rect(x+250, y+150, 299, 99);   //         Breath
    rect(x+200, y+999, 399, 99);   //         Controles
    rect(x+1149, y+999, 399, 99);  //         Ajustes
    rect(x+2098, y+999, 399, 99);  //         Creditos
    rect(x+2148, y+350, 299, 99);  //         ¿Continuar?
    fill(255, 3, 3);
    rect(j1, j2, 399, 99);         // Boton JUGAR
    rect(c1, c2, 299, 49);         //       CONTROLES
    rect(a1, a2, 299, 49);         //       AJUSTES
    rect(cr1, cr2, 299, 49);       //       CREDITOS
    rect(s1, s2, 99, 49);          //       SALIR
    rect(vc1, vc2, 199, 49);       //       VOLVER en CONTROLES
    rect(va1, va2, 199, 49);       //                 AJUSTES
    rect(vcr1, vcr2, 199, 49);     //                 CREDITOS
    rect(r1, r2, 299, 49);         //       VOLVER A INTENTARLO
    rect(m1, m2, 299, 49);         //       MENU PRINCIPAL
    //rect(p1,p2,199,99);         //       PRUEBA
    line(x+1199, y+1449, x+1498, y+1449);
    ellipse(x+1498, y+1449, 50, 50);



    stroke(255);
    fill(255);
    textSize(56);
    //textFont(texto);
    text(" DRAGON'S ", x+270, y+60, 299, 99);           // Letrero Dragon´s
    text(" BREATH ", x+295, y+160, 299, 99);            //         Breath
    text(" Controles ", x+280, y+1009, 399, 99);        //         Controles
    text(" Ajustes ", x+1255, y+1009, 399, 99);         //         Ajustes
    text(" Creditos ", x+2190, y+1009, 399, 99);        //         Creditos
    text(" ¿Continuar? ", x+2148, y+350, 299, 99);      //         ¿Continuar?
    text(" JUGAR ", j1+100, j2+15, 399, 99);            // Boton JUGAR
    textSize(30);


    text(" SALIR ", s1+5, s2, 99, 49);                  //       SALIR


    text(" Tiros Acertados: ", x+974, y+30, 249, 49);   // Letrero Tiros Acertados
    text((b), x+1194, y+59);
    text(" Tiempo: ", x+1499, y+30, 199, 49);           //         Tiempo
    text((t), x+1609, y+59);                          //         Valor del tiempo


    text(" CONTROLES ", c1+65, c2+5, 299, 49);
    text(" VOLVER ", vc1+45, vc2, 199, 49);
    text(" Flecha Derecha: Girar en sentido de las manecillas del", x+50, y+1149);
    text(" reloj ", x+50, y+1199);
    text(" Flecha Izquierda: Girar en sentido contrario de las ", x+50, y+1299);    // Seccion Controles
    text(" manecillas del reloj ", x+50, y+1349);
    text(" Flecha Arriba: Acercarse al enemigo ", x+50, y+1399);
    text(" Flecha Abajo: Alejarse del enemigo ", x+50, y+1499);
    text(" Espacio: Disparar contra el enemigo ", x+50, y+1599);


    text(" AJUSTES ", a1+85, a2+5, 299, 49);                                          //         Ajustes
    text(" VOLVER ", va1+45, va2, 199, 49);


    text(" CREDITOS ", cr1+75, cr2+5, 299, 49);         //       CREDITOS
    text(" VOLVER ", vcr1+45, vcr2, 199, 49);
    text(" Creado por Andres Landazabal y Daniel Gualdron ", x+1968, y+1149);


    text(" VOLVER A INTENTARLO", r1, r2, 299, 49);      //       VOLVER A INTENTARLO
    text(" MENU PRINCIPAL", m1+35, m2, 299, 49);        //       MENU PRINCIPAL
    text(" Puntaje Total: ", x+2048, y+105, 499, 49);  //         Puntaje Total
    text(" Tiempo Final: ", x+2048, y+204, 499, 49);   //         Tiempo Final
    text((t), x+2258, y+233);                        //
    text((p), x+2258, y+134);                        //
  }
}
