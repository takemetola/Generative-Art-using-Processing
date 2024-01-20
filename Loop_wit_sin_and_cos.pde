float x = 400;
float y = 400;
float angle = 90;
float dia = 20;

void setup(){
  fullScreen();
//size(900, 900);
}

void draw(){
  background(#151515);
  translate(width/2,height/2);
  rotate(radians(14.5+angle/3));
  for (float a=0; a<360; a+=10){
    pushMatrix();
    if (angle<360) rotate(radians(a)*sin(radians(angle)));
    else rotate(radians(a));
  stroke(255);
  strokeWeight(3);
  line(x*sin(radians(angle)),0,0,y-dia/2);
  noStroke();
  fill(255);
  ellipse(x*sin(radians(angle)),0,dia/2,dia/2);
  stroke(255);
  noFill();
  ellipse(0,y,dia,dia);

  popMatrix();
  }
  angle++;
}
