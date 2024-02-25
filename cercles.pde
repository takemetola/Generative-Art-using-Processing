int numPoints = 2880; 
float radius = 100; 
float[] angles; 
int numCir = 11; 

void setup() {
  size(600, 600);
  angles = new float[numPoints];
  float angleIncrement = TWO_PI / numPoints; 
  for (int i = 0; i < numPoints; i++) {
    angles[i] = i * angleIncrement;
    noLoop();
  }
}

void draw() {
  background(#f1f1f1);
  float centerX = width / 2; 
  float centerY = height / 2;
  
  for (int i = 0; i < numCir; i++) {
    float randomX = random(-width / 4, width / 4) + centerX; 
    float randomY = random(-height / 4, height / 4) + centerY; 
    float randomRotation = random(TWO_PI);
    translate(randomX, randomY); 
    rotate(randomRotation);
    strokeWeight(1.7);
    stroke(random(200, 255), 0, 0, random(90, 150));
    noFill();
    beginShape();
    for (int j = 0; j < numPoints - 200; j++) { 
      float x = radius * cos(angles[j]);
      float y = radius * sin(angles[j]);
      curveVertex(x, y); 
    }
    endShape();
    rotate(-randomRotation);
    translate(-randomX, -randomY);
  }
}
