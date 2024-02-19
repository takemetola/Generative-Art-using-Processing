void setup() {
  size(700, 700);
  background(255);

  noLoop();
}


void draw() {
  int cols = 3;
  int rows = 14;
  int s = 1;



  rectMode(CENTER);

  for ( int x = 0; x < cols; x++) {
    for ( int y = 0; y < rows; y++) {
      float dis = radians(random(-1.5, 1.5));
      float dist = random(-5, 5);
      float pX = x * width/cols + s  / 2;
      float pY = y * height/rows + s / 2;


      pushMatrix();
      translate(pX + s /2, pY +s /2);


      noStroke();
      fill(255, 0, 0, 200);
      rotate(dis);
      rect(-s /2 +100 +dist, -s/2+28+dist, 150, 23);
      popMatrix();
    }
  }
}
