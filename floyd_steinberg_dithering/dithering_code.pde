
PImage currentImage;

void setup() {
  size(1024, 512);
  currentImage = loadImage("brz.jpg");
  currentImage.filter(GRAY);
  //currentImage.resize(width, height);
  image(currentImage, 0, 0);
}

int index(int x, int y) {
  return x + y * currentImage.width;
}


void draw() {
  currentImage.loadPixels();
  for ( int y = 0; y < currentImage.height-1; y++) {
    for ( int x = 1; x < currentImage.width-1; x++) {

      //int index = x + y * currentImage.width;
      color pix = currentImage.pixels[index(x, y)];

      float oldR = red(pix);
      float oldG = green(pix);
      float oldB = blue(pix);
      int factor = 1;
      int newR = round(factor * oldR / 255) * (255 * factor);
      int newG = round(factor * oldG / 255) * (255 * factor);
      int newB = round(factor *  oldB / 255) * (255 * factor);
      currentImage.pixels[index(x, y)] = color(newR, newG, newB);

      float errR = oldR - newR;
      float errG = oldG - newG;
      float errB = oldB - newB;

      int index = index(x+1, y );
        color c = currentImage.pixels[index];
      float r = red(c);
      float g= green(c);
      float b = blue(c);
      r = r + errR * 7/16.0;
      g = g + errG * 7/16.0;
      b = b + errB * 7/16.0;
      currentImage.pixels[index] = color(r, g, b);
      
       index = index(x-1, y+1);
         c = currentImage.pixels[index];
       r = red(c);
       g= green(c);
       b = blue(c);
      r = r + errR * 3/16.0;
      g = g + errG * 3/16.0;
      b = b + errB * 3/16.0;
     currentImage.pixels[index] = color(r, g, b);
      
      index = index(x, y+1);
         c = currentImage.pixels[index];
       r = red(c);
       g= green(c);
       b = blue(c);
      r = r + errR * 5/16.0;
      g = g + errG * 5/16.0;
      b = b + errB * 5/16.0;
      currentImage.pixels[index] = color(r, g, b);
      
      index = index(x+1, y+1);
         c = currentImage.pixels[index];
       r = red(c);
       g= green(c);
       b = blue(c);
      r = r + errR * 1/16.0;
      g = g + errG * 1/16.0;
      b = b + errB * 1/16.0;
     currentImage.pixels[index] = color(r, g, b);
      
      



      //  brz.pixels[index(x+1, y  )] = 0;
      //brz.pixels[index(x-1, y+1)] = 0;
      //brz.pixels[index(x, y+1)] = 0;
      //brz.pixels[index(x+1, y+1)] = 0;





      //pixels[x + 1][y    ] := pixels[x + 1][y    ] + quant_error × 7 / 16
      //pixels[x - 1][y + 1] := pixels[x - 1][y + 1] + quant_error × 3 / 16
      //pixels[x    ][y + 1] := pixels[x    ][y + 1] + quant_error × 5 / 16
      //pixels[x + 1][y + 1] := pixels[x + 1][y + 1] + quant_error × 1 / 16
    }
  }
 currentImage.updatePixels();
  image(currentImage, 512, 0);
}
