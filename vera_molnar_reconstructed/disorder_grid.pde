void setup() {
  size(600, 600);
  background(255);
  noLoop();
}

void draw() {

  int row = 2;
  int col = 2;
  int size = 300;

  for (int x = 0; x<row; x++) {
    for (int y = 0; y<col; y++) {
      float posX = x * size + size /2;
      float posY = y * size + size /2;
      float dis = random(20,40);


      translate(posX, posY);
      for (int i = 0; i <= 240; i+=20) {
        if ( i == 220){
          fill(255);
        }else if ( i % 40 ==0 ) {
          fill(0);
        } else {
          fill(255);
        }
        println(i);
        rectMode(CENTER);
        rect(0, 0, (200-i)+dis, (200-i)+dis);
      }
      resetMatrix();
      
    }
  }
}
