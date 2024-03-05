void setup() {
  size(720, 720);
  background(#f1f1f1);
  noLoop();
}


void draw() {
  noStroke();
  fill(253,83,86,200);
  int col = 3;
  int row = 3;
  int size = 150;
  

translate(width/2 - size, height/2 - size);
rectMode(CENTER);
  for (int x = 0; x<row; x++) {
    for (int y = 0; y<col; y++) {
      float dis = random(-15,15);
       float posX = x * size + size /2 + dis;
      float posY = y * size + size /2 + dis;
      
      

      

      rect(posX, posY, size, size);
    }
  }
}
