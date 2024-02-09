float x, y; 
float sideLength = 50; 

void setup() {
  size(400, 400);
  x = width/2; 
  y = height/2; 
}

void draw() {
  background(1);
  
  
  x += random(-5, 5);
  y += random(-5, 5);
  drawSquare(x, y, sideLength);
}

void drawSquare(float x, float y, float sideLength) {
  noFill();
  stroke(255);
  strokeWeight(3);
  rectMode(CENTER);
  rect(x, y, sideLength, sideLength);
}

void mousePressed() {
  
  float newX = random(width);
  float newY = random(height);
  float newSideLength = random(20, 80); 
  drawSquare(newX, newY, newSideLength);
}
