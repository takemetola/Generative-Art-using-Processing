class Particle {
  
  
  ArrayList<PVector> old = new ArrayList<PVector>();
  
  float x, y, ang;
  float speed = 5;
  int size = 5;
  int c;
  
  int tailLength = 50;
  
  boolean dead = false;
  
  Particle(float x, float y, float ang, int c){
    this.x = x;
    this.y = y;
    this.ang = ang;
    this.c = c;
   
  }
  
  void update(){
    
    if(random(1) > 0.95) {
      if(random(1) > 0.5) {
      ang += PI/4;
    } else {
    ang -= PI/4;
    }
    }
    
    old.add(new PVector(x, y));
    
    while(old.size() > tailLength){
      old.remove(0);
    }
    
    x += cos(ang) * speed;
    y += sin(ang) * speed;
    
    if(old.get(0).x  < 0 || x > width || old.get(0).y < 0 || y > height) {
      dead = true;
    }
  }
  
  void show() {
    fill(c, 255, 255);
    ellipse(x, y, size, size);
    if(old.size() > 1){
    for(int i = 0; i < old.size(); i++) {
      fill(c, 255, 255, map(i, 0, old.size() -1, 0, 255));
      ellipse(old.get(i).x, old.get(i).y, size, size);
    }
  }
  }
}
