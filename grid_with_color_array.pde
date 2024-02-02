

void setup() {
  size(900,900);
  background(0);
  noLoop();
}
 
void draw() { 
  color[] palette = {
  color(0), 
  color(255),
  color(7, 33 , 95),
  color(61, 109 , 147),
  color(81, 53 , 26),
  color(115, 192 , 171),
  color(143, 120 , 89),
  color(163, 219 , 255),
  color(175, 17 , 34),
  color(197, 133 , 187),
  color(228, 188 , 101),
  color(236, 76 , 91),
  color(243, 241 , 194),
  };
  
  
  int w = 50;
  for (int x = 0; x < width; x+=w) {
    for ( int y =0; y < height; y+= w) {
      noStroke();
     fill(palette[int(random(palette.length))]);      
     square(x, y, w);
    }
}

  for (int x = 0; x < width; x+=w) {
    for ( int y =0; y < height; y+= w) {
      noFill();
      stroke(palette[int(random(palette.length))]);
      fill(palette[int(random(palette.length))]);
      strokeWeight(w /2);
      strokeCap(SQUARE);
      pushMatrix();
      translate(x + w /2, y + w / 2);
      int offset = int(random(4));
      rotate((offset * PI) / 2);
      arc(-w/2, -w/2, w*2 - w / 2, w*2 - w / 2, 0, PI /2);
      popMatrix();
    }
  }
}

void keyPressed() {
  if(key== ' ') redraw();
}
