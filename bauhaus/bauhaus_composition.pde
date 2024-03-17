color bg = #f1f1f1;
color[] colors = new color[3];
int counter = 0;

void setup() {
  size(900, 900);
  background(bg);
  frameRate(2);
}

void draw() {
  if (counter <20){
  colors[0] = color(255, 0, 0);
  colors[1] = color(255, 255, 0);
  colors[2] = color(0, 0, 255);
  noStroke();
  background(1);

  
  drawTriangle(colors[0]);

  drawRect(colors[2]);
  drawCircle(colors[1]);
  
}
