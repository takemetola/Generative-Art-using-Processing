float theta = 0;
float r = 300;

void setup() {
  size(900, 900);
  background(0);
  noFill();
}

void draw() {
  float x = width / 2 + r * cos(theta);
  float y = height / 2 + r * sin(theta);

  stroke(random(0, 100), random(0, 10), random(150, 255), 100);
  strokeWeight(3);

  triangle(width / 2, height / 4, width / 2, 3 * height / 4, x, y);

  theta += 0.05;

  if (theta >= TWO_PI) {
    theta += 5;
    
  }
}
