void setup() {
  size(400, 400);
  background(#f1f1f1);
  noLoop();
}

void draw() {
  noFill();
  strokeWeight(2);
  
  float radius = 150;
  float centerX = width / 2;
  float centerY = height / 2;
  float startAngle = PI; 
  float endAngle = TWO_PI; 
  float secondStartAngle = 0;
  float secondEnedAngle = PI;
  int num = 15;
  translate(centerX,centerY);
   rotate(PI/3);
  for (int i = 0; i < num; i++){
    stroke(255,0,0,100);
    line(-150,0,160,0);
    stroke(0);
  arc(0, 0, radius * 2, radius * 2, startAngle, endAngle);
  arc(0+10, 0, radius * 2, radius * 2, secondStartAngle, secondEnedAngle);
  radius-=10;
}
}
