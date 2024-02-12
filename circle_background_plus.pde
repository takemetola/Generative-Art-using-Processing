
float r = 10;
void setup() {
  size(1080, 720);
}


void draw() {
  background(200);
  noFill();
  strokeWeight(3);




  if (mousePressed == true) {
    background(1);
    stroke(200);

    ellipse(width/2, height/2, r, r);
    fill(255);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
    noFill();

    r+=5;
  } else {

    ellipse(width/2, height/2, r, r);
    stroke(1);

    r+=5;
  }
  
  if (r >= height) {
  r = 10;
}
}
