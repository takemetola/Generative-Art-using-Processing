class Particle {
  PVector pos;
  float r;
  color particleColor;
  color particleColor2;

Particle(float x, float y){
  pos = new PVector(x,y);
  r = 2;
  particleColor = color(random(230, 255), random(190, 192), random(170, 203), random(0, 255));
  particleColor2 = color(random(255), random(255), random(255), random(100));
}
 
 void update() {
   pos.x -= 2;
   pos.y += random(-10 , 10);
   
   float angle = pos.heading();
   angle = constrain(angle, 0, PI/3);
   float magnitude = pos.mag();
   pos = PVector.fromAngle(angle);
   pos.setMag(magnitude);
 
}

void show() {
  strokeWeight(random(0.1, 1));
 fill(particleColor);
 stroke(particleColor2);
 ellipse(pos.x , pos.y , r * 3, r * 0.5);
}

 boolean intersects(ArrayList<Particle> snowflake){
   boolean result = false;
   for (Particle s : snowflake){
     float d = dist(s.pos.x, s.pos.y, pos.x, pos.y);
     if ( d < r*2) {
     result = true;
     break;
     }
   }
   return result;
 }
 

 boolean finished() {
   return (pos.x < 1);
}
}
