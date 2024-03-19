int counter = 0;

void setup() {
  size(1200, 600);
  background(#f1f1f1);
  strokeWeight(7);
  strokeCap(SQUARE);
}

void draw() {

  color b = color(9, 37, 87,200);
  color r = color(135, 3, 17,200);
  color y = color(211, 179, 15,200);

  float random1 = random(0, 1200);
  float random2 = random(0, 1200);
  float random3 = random(0, 1200);
  float random4 = random(0, 1200);
  float random5 = random(0, 1200);
  float random6 = random(0, 1200);
  float random7 = random(0, 1200);
  float random8 = random(0, 1200);
  float random9 = random(0, 1200);



  if (counter <15) {
    stroke (b);
    line (0, random1, width, random1);
    stroke(r);
    line(0, random2, width, random2);
    stroke(y);
    line(random3, 0, random3, height);
    stroke(y);
    line(random4, 0, random4, height);
    stroke (b);
    line (0, random5, width, random5);
    stroke(r);
    line(0, random6, width, random6);
    stroke(y);
    line(random7, 0, random7, height);
    stroke(r);
    line(random8, 0, random8, height);
    stroke(b);
    line(random9, 0, random9, height);
  }
  counter++;
}
