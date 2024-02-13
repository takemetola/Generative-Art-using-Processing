float a = 600;
float b = 200;



void setup() {
  size(900,900);
  background(255);
  noLoop();
}


void draw() {
  background(255);
   translate(width/2, height/2);
   float angle = radians(3);
   float angle1 = radians(1);
   float angle2 = radians(-4);
  
  rectMode(CENTER);
  
  noStroke();
  
  rotate(angle);
  fill(190,50,25);
  rotate(angle1);
  rect(0,0,a,a);
  fill(255);
  rect(0,0,b,b);
  rotate(angle2);
  fill(150,50,0);
  rect(150,120,b,b);
  
}
