particles[] swarm;
int size_swarm = 300;
int counter = 0;

void setup() {
  size(900,900);
  colorMode(HSB);
  swarm = new particles[size_swarm];
  int hue = int(random(0,255));
  for (int i = 0; i < size_swarm; i++) {
    swarm[i] = new particles(i,hue);
  }
  background(0);
}

void draw() {
  fill(0,30);
  rect(0,0, width, height);
  for (int i=0; i < size_swarm; i++){
    swarm[i].update();
  }
  for(int i = 0; i < size_swarm; i++){
    swarm[i].display();
  }
  counter = counter +1;
  if(counter > 400){
    counter = 0;
    int hue = int(random(0,255));
    for(int i = 0; i < size_swarm; i++){
      
    swarm[i].reset(i, hue);
  }
  }
}

void keyPressed() {
  if (key== ' ') {
    redraw();
  }
  background(0);
}
  
