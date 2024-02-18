void setup() {
  size(600, 600);
  background(255);

  noLoop();
}


void draw() {
  int rows = 2;
  int cols = 2;
  int size = 200;
  float dis = random(-20, 20);
  int gray = color(1, 1, 1, 150);

  translate(width/2 - size, height/2 - size);
  rectMode(CENTER);
  rotate(radians(1));
  for ( int x = 0; x < rows; x++) {
    for ( int y = 0; y < cols; y++) {

      float pX = x * size + size / 2;
      float pY = y * size + size / 2;

      noStroke();
      fill(gray);
      if (x == 0 && y == 0) {
        rect(pX+5, pY, 200, 200);
      } else if (x == 1 && y == 0) {
        rect(pX, pY+10, 200, 200);
      } else if (x == 0 && y == 1) {
        rect(pX-5, pY-2, 200, 200);
      } else if (x == 1 && y == 1) {
        rect(pX-6, pY-5, 200, 200);
      }
    }
  }
}
