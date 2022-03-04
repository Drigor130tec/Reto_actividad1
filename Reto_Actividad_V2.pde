Kirby body_1;

void setup(){
 size (680, 680);
 background (120);
 body_1 = new Kirby(color(255,170,210), color (236, 85, 103), (120), 200, 200, 5);
}

void draw(){
  
  body_1.display();
  if ((keyPressed == true) && (key == 'W')) {
    body_1.moveW();
  }
  if ((keyPressed == true) && (key == 'A')) {
    body_1.moveA();
  }
  if ((keyPressed == true) && (key == 'S')) {
    body_1.moveS();
  }
  if ((keyPressed == true) && (key == 'D')) {
    body_1.moveD();
  }
}


class Kirby {
  color c;
  color c2;
  color BGc;
  float xpos;
  float ypos;
  float xspeed;

Kirby(color tempC, color tempc2, color tempc3, float t_xpos, float t_ypos,float t_xspeed){
    c = tempC;
    c2 = tempc2;
    BGc = tempc3;
    xpos = t_xpos;
    ypos = t_ypos;
    xspeed = t_xspeed;
}

  void display() {
    stroke(0);
    fill(c);
    // xpos = 55, ypos = 95
    ellipseMode (CENTER);
    ellipse (xpos+92, ypos+5 , 25 , 40);  //mano derecha
    fill(c2);
    ellipse (xpos+75, ypos+50, 45 , 25);  //pie derecho
    fill(c);
    ellipse (xpos+45, ypos+5 , 100, 95);  //cuerpo
    fill(c2);
    ellipse (xpos+55, ypos+19 , 12, 8);  //boca
    
    fill (0);
    ellipse (xpos+38, ypos-1   , 14 , 34);   //Ojo izquierdo
    fill (255);
    ellipse (xpos+38, ypos-8   , 9 , 12);   //Pupila izquierda
    fill (0);
    ellipse (xpos+70, ypos-1   , 14 , 34);  //Ojo derecho
    fill (255);
    ellipse (xpos+70, ypos-8   , 9 , 12);   //Pupila derecha
    fill(c);
    ellipse (xpos   , ypos+5 , 25 , 40);   //mano izquierda
    fill(c2);
    ellipse (xpos+25, ypos+50, 45 , 25);   //pie izquierdo
  }
  
  void moveW() {;
    if (ypos == 40) {
      BGc  = color(244, 208, 63);
    }
    else{
      ypos = ypos - xspeed;
    }
    background(BGc);
    body_1.display();
  }
  
  
  void moveA() {
    if (xpos == 10) {
      BGc = color(155, 89, 182);
    }
    else{
      xpos = xpos - xspeed;
    }
    background(BGc);
     body_1.display();
  }
  
  
  void moveS() {
    if (ypos == height-50) {
      BGc = color(123, 36, 28);
    }
    else{
      ypos = ypos + xspeed;
    }
    background (BGc);
     body_1.display();
  }
  
  
  void moveD() {
    if (xpos == width-100) {
      BGc = color(244,139, 216);
    }
    else{
      xpos = xpos + xspeed;
    }
    background (BGc);
     body_1.display();
  }
}
