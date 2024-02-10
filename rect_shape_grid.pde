int cols = 6; // Number of columns in the grid
int rows = 6; // Number of rows in the grid
int shapeSize = 15; // Size of each shape (smaller size)

void setup() {
  size(600, 600);
  background(1);
  noLoop();
}

void draw() {
  // Adjust the noise factor for variation
  float noiseFactor = 2;
  
  // Loop through each row and column
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      // Calculate position for the shape
      float posX = i * (width / cols) + (width / cols) / 2;
      float posY = j * (height / rows) + (height / rows) / 2;
      
      // Draw the shape at the calculated position
      drawRandomShape(posX, posY, noiseFactor);
    }
  }
}

void drawRandomShape(float x, float y, float noiseFactor) {
  // Define parameters for the rectangle
  float halfWidth = shapeSize / 2; // Half width of the rectangle
  float halfHeight = shapeSize / 2; // Half height of the rectangle
  float sideNoise = 5; // Random noise for the side lines
  
  // Draw the imperfect rectangle
  float weightNoise = noise(x * noiseFactor, y * noiseFactor) * 2;
  float weight = random(3) + weightNoise;
  stroke(255);
  strokeWeight(weight);
  beginShape();
  for (int i = 0; i < 5; i++) {
    // Calculate the position of each vertex of the rectangle
    float posX, posY;
    if (i == 0) {
      posX = x - halfWidth + random(-sideNoise, sideNoise); // Add randomness to the first side line
      posY = y - halfHeight;
    } else if (i == 1) {
      posX = x + halfWidth;
      posY = y - halfHeight + random(-sideNoise, sideNoise); // Add randomness to the second side line
    } else if (i == 2) {
      posX = x + halfWidth + random(-sideNoise, sideNoise); // Add randomness to the third side line
      posY = y + halfHeight;
    } else if (i == 3) {
      posX = x - halfWidth;
      posY = y + halfHeight + random(-sideNoise, sideNoise); // Add randomness to the fourth side line
    } else {
      posX = x - halfWidth + random(-sideNoise, sideNoise); // Add randomness to close the shape
      posY = y - halfHeight;
    }
    // Draw the vertex
    vertex(posX, posY);
  }
  endShape(CLOSE);
}
