PFont myFont;

void setup()
{
  size(1000, 700);
}

void draw()
{
  background(0);
  
  myFont = loadFont("Arcade1.vlw");
  
  stroke(255);
  line(0, 0, 1000, 0);
  line(0, 95, 1000, 95);
  line(333, 0, 333, 700);
  line(666, 0, 666, 700);
  
  
  
}