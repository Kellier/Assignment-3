ArrayList<Object> objects = new ArrayList<Object>();

PFont myFont;

void setup()
{
  size(1000, 700);
}

void draw()
{
  background(0);
  
    myFont = loadFont("Arcade1.vlw");
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(90);
    text("Arcade", 500, 90);
}