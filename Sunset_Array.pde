int num = 30;
float[] y = new float[num];
float sW;

void setup() {
  size(900,900);
  //fullScreen();
  
  for ( int n=0; n<num; n++){
    y[n] = height/num*n;
  }
  sW = height/num/2;
  
}

void draw() {
  background(#061324);
  
  for (int n=0; n<num; n++) {
    float alpha = map(y[n], 0, height, 0, 255);
    stroke(#F10000, alpha);
    strokeWeight(sW);
    line(0, y[n], width, y[n]);
    
    y[n] += 0.5;
    if(y[n]>height) y[n]=0;
  }
  
  stroke(#061324);
  strokeWeight(height/3);
  noFill();
  ellipse(width/2, height/2, height+height/6, height+height/6);
}
