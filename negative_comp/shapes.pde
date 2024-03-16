void displayCircle(color c) {
  noStroke();
  fill(c);
  float circleX = random(0, width);
  float circleY = random(0, height);
  float d = random(200, 1000);
  circle(circleX, circleY, d);
}

void displayRect(color c) {
  noStroke();
  fill(c);
  float rectX = random(0, width);
  float rectY = random(0, height);
  float w = random(50, 600);
  float h = random(50, 600);
  pushMatrix();
  translate(rectX, rectY);
  rotate(radians(random(360)));
  rect(0, 0, w, h);
  popMatrix();
}

void displayLine(color c) {
  stroke(c);
  strokeWeight(5);
  float lineX1 = random(0, width);
  float lineY1= random(0, height);
  float lineX2 = random(0, width);
  float lineY2 = random(0, height);
  line(lineX1,lineY1,lineX2,lineY2);
}
