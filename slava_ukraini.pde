String[] words = {
  "FREEDOM", "LIBERTAD", "LIBERTÉ", 
  "FREIHEIT", "LIBERTÀ", "VRIJHEID", 
  "LIBERDADE", "WOLNOŚĆ", "СВОБОДА", 
  "ΕΛΕΥΘΕΡΊΑ", "LIBERTATE", "SZABADSÁG", 
  "SLOBODA", "СЛОБОДА",
  "LAISVĖ", "LIBERTÀ"
};
String[] words2 = {
  "HERO", "HÉROE", "HÉROS", 
  "HELD","EROE", "HELD", 
  "HERÓI", "BOHATER", "ГЕРОЙ", 
  "ΗΡΩΑΣ", "EROU", "HŐS", 
  "ГЕРОЙ", "JUNAK", "ГЕРОЈ", 
  "Hrdina", "HEROIUS", "HEROJUS",
  "Kangelane", "HJÄLTE"
};

color[] colors = {
  color(100, 160, 240, random(100)),
  color(120, 175, 250, random(100)),
  color(115, 175, 245, random(100)),
  color(110, 165, 245, random(100, 255)),
  color(115, 170, 245, random(100, 255)),
  color(245, 195, 47, random(100, 255)),
  color(249, 199, 51, random(200)),
  color(246, 196, 48, random(200)),
  color(248, 197, 46, random(100, 200)),
  color(247, 198, 47, random(100, 200))
};

color[] colors2 = {
  color(132, 17, 9,random(100, 200)),
  color(100, 10, 5,random(100, 255)),
  color(120, 15, 8,random(100, 200)),
  color(150, 20, 10,random(100, 255)),
  color(170, 25, 12,random(100, 200))
};


int counter = 0;

void setup() {
  size(900, 900);
  noStroke();
  fill(111, 171, 246);
  rect(0, 0, width, height/2);
  fill(247, 198, 49);
  rect(0, height/2, width, height/2);
  frameRate(2);
}

void draw() {
  PFont brixton;
  brixton = createFont("Brixton_Bold.ttf", 128);

  println(frameCount);
  int index = int(random(words.length));
  int index2 = int(random(colors.length));
  int index3 = int(random(words2.length));
  int index4 = int(random(colors2.length));

  if (counter<250) {
    if (index < words.length) {

      fill(colors[index2]);
      textSize(random(20, 90));
      translate(random(0, width), random(0, height));
      if (index % 2 == 0) {
        rotate(radians(90));
        fill(colors[index2]);
        textFont(brixton);
        text(words[index], 0, 0);
      } else if (index % 3 == 0) {
        rotate(radians(-90));
        fill(colors[index2]);
        text(words[index], 150, 150);
      } else {
        text(words[index], 150, 150);
      }
      counter++;
    }
  } else if (counter >= 249 && counter < 350) {
    if (index3 < words2.length) {
      fill(colors2[index4]);
      textSize(random(50, 90));
      translate(random(100, width), random(100, height));
      if (index % 2 == 0) {
        rotate(radians(90));
        fill(colors2[index4]);
        text(words2[index3], 0, 0);
      } else if (index3 % 3 == 0) {
        rotate(radians(-90));
        fill(colors2[index4]);
        text(words2[index3], 150, 150);
      } else {
        text(words2[index3], 150, 150);
      }
      counter++;
    }
    if (counter>=350) {
      counter=0;
    }
  }
}
