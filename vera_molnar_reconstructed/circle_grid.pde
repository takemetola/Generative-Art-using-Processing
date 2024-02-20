int cols = 9;
int rows = 9;
int gridCols = 3;
int gridRows = 3;
int circleSize = 25;
float spacing = 0;
float strokeW = 1;

void setup() {
  size(730, 730);
  background(255);
  noLoop();
}

void draw() {

  for (int a = 0; a < gridCols; a++) {
    for (int b = 0; b < gridRows; b++) {

      for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {

          float px = a * (cols *circleSize + (cols -1) * spacing) + i * (circleSize + spacing) + circleSize /2;
          float py = b * (rows *circleSize + (rows -1) * spacing) + j * (circleSize + spacing) + circleSize /2;

          int sum = i + j;
          float strokeW = map(sum, 0, cols + rows - 2, random(2,2.5), random(3,8));
          
          strokeWeight(strokeW);
          stroke(255,0,0,220);
          ellipse(px+30, py+30, circleSize, circleSize);
          }
        }
      }
    }
  }
