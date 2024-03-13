
String[] fruits = {"banana", "orange", "watermelon", "strawberry"};
int index = 0;
void setup(){
  size(600,360);
  frameRate(5);
}


void draw(){
  background(0);
  
  
  
  if (index==0) {
    stroke(255,255,0);
    strokeWeight(24);
    line(width/2,height/2,width/2,height/2 -40);
    textAlign(CENTER);
    textSize(34);
    fill(255);
    text(fruits[index], width/2, height/2 + 64);
    index++;
   
    }else
    if (index==1) {
    noStroke();
    fill(255,165,0);
    circle(width/2,height/2, 40);
    textAlign(CENTER);
    textSize(34);
    fill(255);
    text(fruits[index], width/2, height/2 + 64);
    index++;
   
    }else
    if (index==2) {
    noStroke();
    fill(50,200,50);
    ellipse(width/2,height/2-20, 75, 90);
    textAlign(CENTER);
    textSize(34);
    fill(255);
    text(fruits[index], width/2, height/2 + 64);
    index++;
   
    }else
    if (index==3) {
    noStroke();
    fill(200,0,0);
    rect(width/2 - 10,height/2 - 10, 20, 25,20);
    textAlign(CENTER);
    textSize(34);
    fill(255);
    text(fruits[index], width/2, height/2 + 64);
    index++;
    }
    
    
    
    if (index>=4){
      index=0;
    }
  
    

  
  }
 
