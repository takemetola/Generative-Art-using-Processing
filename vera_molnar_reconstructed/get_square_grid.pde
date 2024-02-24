int num = 10;
int s = 25;
int x = 10;
int y = 10;
float[] rotations;
int padding = 20;



void setup() {
  size(700, 705);
  background(255);
  frameRate(500);
  //noLoop();
  rotations = new float[num];
}



void draw() {
  for (int i = 0; i < num; i++) {
    rotations[i] = radians(random(-0.5,1 ));
    noStroke();
    fill(200-y*0.45);
    pushMatrix();
       
    rotate(rotations[i]);
    translate(x + padding /2, y + padding / 2);
    rectMode(CENTER);
      rect(padding /2, 0, s, s);
    
            //resetMatrix();
            popMatrix();

      x += 30;
      if (x >= width - padding) {
        x = 0;
        y += 30;
      }
    }
  }
