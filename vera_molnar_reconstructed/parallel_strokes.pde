void setup() {
  size(600, 600);
  background(255);

  noLoop();
}


void draw() {

  float tileX = 50;
  float tileY = 50;

  float tileW = width/ tileX;
  float tileH = height / tileY;
  float a = radians(90);

  for ( int x = 0; x < tileX; x++) {
    for ( int y = 0; y < tileY; y++) {
      line((x*tileW) / 2, y*tileH / 2, (x*tileW) / 2, (y*tileH+100) /2);
    }
  }
  //translate(width/2,height/2);
     //rotate(a);
      for ( int x1 = 0; x1 < tileX; x1++) {
        for ( int y1 = 0; y1 < tileY; y1++) {
          
          line((x1*tileW) / 2 + 252, (y1*tileH) /2 , (x1*tileW+100) / 2 + 300, (y1*tileH) /2);
        }
      }
       
  
}
