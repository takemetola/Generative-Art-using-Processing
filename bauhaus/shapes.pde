void drawTriangle(color c) {
   fill(c);
  float triX1 = random(0, width);
  float triY1 = random(0, height);
  float triX2 = random(0, width);
  float triY2 = random(0, height);
  float triX3 = random(0, 450);
  float triY3 = random(0, 450);

  triangle(triX1, triY1, triX2, triY2, triX3, triY3);
}

void drawCircle(color c) {
  fill(c);

  float circX = random(0, width);
  float circY = random(0, height);
  float d = random(50, 500);
  circle(circX, circY, d);
}

void drawRect(color c) {
  fill(c);

  float rectX = random(0, width);
  float rectY = random(0, height);
  float w = random(100, 600);
  float h = random(50, 600);
  pushMatrix();
  translate(rectX, rectY);
  rotate(radians(random(360)));
  rect(0, 0, w, h);

  popMatrix();
}
