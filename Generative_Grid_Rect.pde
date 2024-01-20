int mX = 90;
int mY = 90;
int grid = 40;
int size = 40;

void setup() {
  size(900,900);
  rectMode(CENTER);
  noLoop();
}

void draw() {
  background(255);
  
  for (int x=mX; x<= width-mX; x+=grid) {
    for (int y=mY; y<= height-mY; y+=grid) {
      pushMatrix();
      translate(x,y);
      rotate(random(TWO_PI));
      
       noStroke();
      fill(230, 60, 80);
      rect(0, 0, random(size*1.4), random(size*1.4));
      popMatrix();
    }
  }
      
      for (int x=mX; x<= width-mX; x+=grid) {
    for (int y=mY; y<= height-mY; y+=grid) {
      pushMatrix();
      translate(x,y);
      //rotate(radians(y));
        rotate(random(TWO_PI));

      
   
      
      
      strokeWeight(2);
      stroke(25, 55, 60);
      fill(170, 205, 210);
      rect(0, 0, random(size*0.85), random(size*0.85));
      
      fill(170, 205, 210);
      rect(0, 0, random(size*0.55), random(size*0.55));
      popMatrix();
    }
  }
}

void keyPressed() {
  if(key== ' ') redraw();
}
