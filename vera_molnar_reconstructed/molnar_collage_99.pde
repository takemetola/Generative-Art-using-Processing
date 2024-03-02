void setup() {
  size(920,620);
  background(#f1f1f1);
  noLoop();
}


void draw() {
  noStroke();
  fill(104,122,123);
  translate(width/2,height/2);
  ellipse(0,0,400,400);
  fill(#f1f1f1);
  rectMode(CENTER);
  pushMatrix();
  fill(#f1f1f1);
  rotate(radians(6));
  rect(92,4,170,170);
  fill(104,122,123);
  rect(76,35,140,65);
  popMatrix();
  pushMatrix();
  fill(#f1f1f1);
  rotate(radians(-5));
  rect(-94,-1,170,170);
  fill(104,122,123);
  rect(-110,30,140,65);
  popMatrix();
  
  
}
