void setup() {
  size(600, 600);
  background(255);
  noLoop();
  strokeWeight(1.3);
}

void draw() {
  float a = radians(180);
  float num = 161;
  float num2 = 161;

  translate(width/2, height/2);
  
  for ( int i = 0; i < num; i+=5) {
    line(-60+i, 0, -60+i, 160);
    line(-100, -30-i, 100, -30-i);
  }
  
  rotate(a);
  for (int i = 0; i < num2; i+=5){
    line(40+i, -10, 40+i, 190);
    line(0, 0-i, 200, 0-i);
  }
    
}
