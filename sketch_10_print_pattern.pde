float spacing = 20;


void setup() {
  size(600, 600);
  background(#f1f1f1);
  noLoop();
}

void draw() {
  
  strokeWeight(2);

  for (float x = 0; x < width; x+= spacing) {
    for (float y = 0; y < height; y+= spacing) {
      float r = random(0,1);
      if (r < 0.5){
      line(x, y, x+spacing, y+spacing);
      } else
      line(x, y+spacing, x+spacing, y);
    }
  }
}
