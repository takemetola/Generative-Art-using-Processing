float angle;
float x;

void setup() {
  size(900,900);
  strokeCap(CORNER);
  noLoop();
}

void draw() {
  background(0, 15, 35);
  
  translate(width/2, height/2);
  
  for (int angle=0; angle<360; angle+=1) {
    x = random(250, 300);
    pushMatrix();
  rotate(radians(angle));
  
  stroke(238);
  strokeWeight(4);
  line(x, 0, width,0);
  popMatrix();

  }
}

void keyPressed() {
  if (key== ' ') {
    redraw();
  }
}
