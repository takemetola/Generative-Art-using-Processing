float x, y;
float dia;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {

 
  dia = random(5, 50);
  noStroke();
  fill(random(255), random(255), random(255));
  
  
  translate(width / 2, height / 2);
  
  // Update position within the canvas boundaries
  x += random(-10, 10);
  y += random(-10, 10);
  
  x = constrain(x, 0 + dia / 2, width - dia / 2);
  y = constrain(y, 0 + dia / 2, height - dia / 2);

  circle(x, y, dia);
}
