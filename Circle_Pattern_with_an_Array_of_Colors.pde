int colArrayCounter;
color[] colArray = {
  color(25, 165, 190),
  color(95, 170, 200),
  color(120, 190, 210),
  color(170, 210, 230),
  color(205, 225, 245),
  color(220, 240, 250)
};


void setup() {
  size(900,900);
  //noLoop();
}

void draw() {
  background(#282828);
  translate(width/2, height/2);
  
  float rStep = 10;
  
  for (float r = 0; r<400; r+=rStep) {
    
    float c = 2*PI*r; //circumference
  float aSegment = floor(c/rStep); //angle Segment
  
  for (float a = 0; a<360; a+=360/aSegment) {
    //fill(random(255), random(255), random(255));
    colArrayCounter++;
    if(colArrayCounter>5) colArrayCounter =0;
    
    fill(colArray[colArrayCounter]);
    //fill(colArray[int(random(6))]);
    pushMatrix();
    rotate(radians(a));
    ellipse(r, 0, rStep, rStep);
    popMatrix();
  }
  }
}

void keyPressed() {
  if (key== ' ') {
    background(#282828);
    redraw();
  }
}
