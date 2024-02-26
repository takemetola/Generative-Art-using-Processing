float x, y;
float xStep = 50;
float yStep = 100;
float a, a_;


int num;


void setup(){
  size(800, 800);
  num = int((width/xStep)*(height/yStep));
}

void draw(){
  background(15, 20, 30);
   strokeCap(CORNER);
  strokeWeight(xStep);
  
  int n=0;
  while (n<num) {
     stroke(255-255*cos(radians(a)),255*cos(radians(a)),255-255*sin(radians(a)), 255-255*sin(radians(a)));
    line(x, y, x, y+yStep);
    
    x+= xStep;
    if (x>width){
      x=xStep/2;
      y+=yStep;
    }
    
    if(y>height){
      y=0;
      a=0;
    }
    n++;
      a+=a_;
  }
 a_+=0.1;
 println();
}
