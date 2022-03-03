Car car_1;

void setup(){
 size (680, 680);
 car_1 = new Car(color(255, 0, 0), 200, 200, 5);
}

void draw(){
  background (120);
  car_1.display();
  if ((keyPressed == true) && (key == 'W')) {
    car_1.moveW();
  }
  if ((keyPressed == true) && (key == 'A')) {
    car_1.moveA();
  }
  if ((keyPressed == true) && (key == 'S')) {
    car_1.moveS();
  }
  if ((keyPressed == true) && (key == 'D')) {
    car_1.moveD();
  }
}


class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;

  Car(color tempC, float tempYpos, float tempXpos, float tempXspeed){
    c = tempC;
    xpos  = tempXpos;
    ypos  = tempYpos;
    xspeed = tempXspeed;
}

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,20,10);
  }
  
  void moveW() {
    ypos = ypos - xspeed;
    if (ypos <= 0) {
      ypos = 0;
      background (244, 208, 63);
      car_1.display();
    }
  }
  void moveA() {
    xpos = xpos - xspeed;
    if (xpos <=0) {
      xpos = 0;
      background (155, 89, 182);
      car_1.display();
    }
  }
  void moveS() {
    ypos = ypos + xspeed;
    if (ypos >= height) {
      ypos = 680;
      background (123, 36, 28);
      car_1.display();
    }
  }
  void moveD() {
    xpos = xpos + xspeed;
    if (xpos >= width) {
      xpos = 680;
      background(244,139, 216);
      car_1.display();
    }
  }
}
