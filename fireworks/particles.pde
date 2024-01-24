class particles {
  float x, y;
  color c;
  float xv, yv;
  float size; // Added size variable

  particles(int i, int h) { // constructor
    reset(i, h);
  }

  void reset(int i, int h) { // constructor
    x = 0.5 *width;
    y = 0.3 * height;

    float velocity = random(0.3, 2);
    float angle = random(0, TWO_PI); // Generate a random angle in radians

    xv = velocity * cos(angle); // Calculate new x velocity
    yv = velocity * sin(angle); // Calculate new y velocity
    c = color(h + random(-20, 20), 255, 255);
    size = 1; // Initial size
  }

  void update() {
    x += xv;
    y += yv;
    yv += 0.01;
    size -= 0.001; // Decrease size in each frame

    if (size < 0) {
      reset(int(random(100)), color(random(255), random(255), random(255))); // Reset particle if size is too small
    }
  }

  void display() {
    noStroke();
    fill(c);
    circle(x, y, 2); // Draw an ellipse at the particle's position with the current size
  }
}
