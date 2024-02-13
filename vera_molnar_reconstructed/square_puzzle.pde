float l = 600;



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
   float angle2 = radians(-3);
  
  rectMode(CENTER);
  
  noStroke();
  
  rotate(angle);
  fill(190,50,25);
  rotate(angle1);
  rect(0,0,l,l);
  fill(255);
  rect(0,0,200,200);
  rotate(angle2);
  fill(150,50,0);
  rect(150,120,200,200);
  
}
