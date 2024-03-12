

void setup() {
  size(720, 640);
  background(#f1f1f1);
  //noStroke();
  
  frameRate(1);
  strokeCap(RECT);
}


void draw() {
  background(#f1f1f1);
  
  int var1 = int(random(0,3));


  if (var1==0) {
    
  strokeWeight(2);
  stroke(0,0,255);
  float lineX1 = random(0, width);
  float lineY1 = random(0, height);
  float lineX2 = random(0, width);
  float lineY2 = random(0, height);

  line(lineX1, lineY1, lineX2, lineY2);
  
  noStroke();
  fill(1);
  float circleX = random(0, width);
  float circleY = random(0, width);
  float dia = random(200,300);
  circle(circleX, circleY, dia);
  
  float rectX = random(0,width);
  float rectY = random(0,height);
  float dia2 = random(50,100);
  rectMode(CENTER);
  rect(rectX, rectY, dia, dia2);
  
} else if (var1==1) {
  strokeWeight(2);
  stroke(1);
  float lineX1 = random(0, width);
  float lineY1 = random(0, height);
  float lineX2 = random(0, width);
  float lineY2 = random(0, height);

  line(lineX1, lineY1, lineX2, lineY2);
  
  noStroke();
  fill(0,0,255);
  float circleX = random(0, width);
  float circleY = random(0, width);
  float dia = random(200,300);
  circle(circleX, circleY, dia);
  
  fill(1);
  float rectX = random(0,width);
  float rectY = random(0,height);
  float dia2 = random(50,100);
  rectMode(CENTER);
  rect(rectX, rectY, dia, dia2);
  
} else {
  strokeWeight(2);
  stroke(1);
  float lineX1 = random(0, width);
  float lineY1 = random(0, height);
  float lineX2 = random(0, width);
  float lineY2 = random(0, height);

  line(lineX1, lineY1, lineX2, lineY2);
  
  noStroke();
  fill(1);
  float circleX = random(0, width);
  float circleY = random(0, width);
  float dia = random(200,300);
  circle(circleX, circleY, dia);
  
  noStroke();
  fill(0,0,255);
  
  float rectX = random(0,width);
  float rectY = random(0,height);
  float dia2 = random(50,100);
  rectMode(CENTER);
  rect(rectX, rectY, dia, dia2);
}
  
println(var1);
}
