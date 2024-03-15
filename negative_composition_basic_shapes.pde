color bg = #f1f1f1;
color fg = #000000;

void setup() {
  size(720, 620);
  frameRate(2);
  strokeCap(SQUARE);
}


void draw() {
  background(bg);
  
  displayRect(fg);
  displayCircle(bg);
  displayLine(fg);
}
