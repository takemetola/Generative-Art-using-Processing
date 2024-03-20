String[] cities = {
  "PARIS", "TOKYO", "BERLIN", "LONDON", "BEIJING", "ROME", "MADRID",
"OTTAWA", "CAIRO", "NEW DELHI", "BARCELONA", "MADRID",
"BUENOS AIRES", "BANGKOK", "CANBERRA", "ANKARA", "STOCKHOLM",
"RIYADH", "MEXICO CITY", "RIGA", "VILNIUS", "SEOUL", "AMSTERDAM",
"VIENNA", "WARSAW", "LISBON", "ATHENS", "DUBLIN", "OSLO", "COPENHAGEN"
};

color[] colors = {
  color(228, 66, 53),
  color(255),
  color(204, 0, 0),
  color(1)
};
  
  


void setup() {
  size(900, 900);
  background(237, 199, 196);
  frameRate(2);
}

void draw() {
  int index = int(random(cities.length));
  int index2 = int(random(colors.length));
  if (index < cities.length) {
    fill(colors[index2]);
    textSize(random(50, 128));
    translate(random(0, width),random(0, height));
    if (index % 2 == 0){
    rotate(radians(90));
    fill(colors[index2]);
    text(cities[index], 0, 0);
    } else if (index % 3 == 0){
      rotate(radians(180));
    fill(colors[index2] );
    text(cities[index], 0, 0);
    }else {
      text(cities[index], 0, 0);
    }
  
  }
}
