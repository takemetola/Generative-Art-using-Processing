


void setup(){
  size(600,360);
  frameRate(5);
}


void draw(){
  background(#f1f1f1);
  
  strokeWeight(20);
  strokeCap(SQUARE);
  for (int i = 0; i < width; i+=10){
    stroke(random(1,255),random(1,255),random(200,255),50);
    
    float minVal = 10.0;
float maxVal = 600;
float random = random(minVal, maxVal);
  
  line(0+i,height,0+i,height - random);
    

  
  }
 

}
