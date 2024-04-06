color[] colors = {
  color(65,66,122,10),
  color(219,170,50,10),
  color(196,207,209,10),
  color(178,57,35,10),
  color(7,9,8,100)
};

void setup() {
  size(900,900);
  background(#f1f1f1);
  rectMode(CENTER);
  //noLoop();
}


void draw() {
  //noStroke();
  int index = int(random(colors.length));
  
  float x1 = random(0,width);
float y1 = random(0,height);

float w = random(50,200) ;
float h = random(50,200);

 for (int i = 0; i <50; i++){
   fill(colors[index]);
   rect(x1,y1,w,h);
 }
}
  
