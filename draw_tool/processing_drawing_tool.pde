
float px, py;


void setup () {
  size(720,720);
}

void draw () {
  
}

void mousePressed() {
 px = mouseX;
 py = mouseY;
  
}

void mouseDragged() {
  line(px, py, mouseX, mouseY);
  px = mouseX;
 py = mouseY;
}
