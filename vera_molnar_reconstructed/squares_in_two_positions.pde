void setup() {
  size(600, 600);
  background(255);
  noLoop();
}

void draw() {
  int col = 6;
  int row = 6;
  int s = 70;
  float a = radians(45);


  for ( int i = 0; i < col; i++) {
    for ( int j = 0; j < row; j++) {

      float px = i * width/col +s /2;
      float py = j * height/row+ s /2;
      float randomA = a * int(random(-2, 2));

      fill(1);


      pushMatrix();
      translate(px + s / 2, py + s / 2);

      rotate(randomA);
      rect(-s / 2 , -s / 2, s, s);


      popMatrix();

      println(a);
    }
  }
}
