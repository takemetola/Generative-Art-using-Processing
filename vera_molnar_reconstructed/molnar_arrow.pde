

int sp = 100;


void setup() {
  size(600, 600);
  background(255, 242, 179);
  noLoop();
  strokeWeight(2);
}

void draw() {
  for (int i = 0; i < 5; i++) {
    line(100, 100 + (i*sp), 500, 100 + (i*sp));

    if (i %2 == 0) {
      for (int j = 0; j < 4; j++) {
        line(100+(j*sp), 100 + (i*sp), 149+(j*sp), 50+ (i*sp));
        line(100 +(j*sp), 100+ (i*sp), 149 +(j*sp), 150+ (i*sp));
      }
    } else {
      for (int j = 0; j < 4; j++) {
        line(200+(j*sp), 100+ (i*sp), 149+(j*sp), 50+ (i*sp));
        line(200 +(j*sp), 100+ (i*sp), 149 +(j*sp), 150+ (i*sp));
      }
    }
  }
}
