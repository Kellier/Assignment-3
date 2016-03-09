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
    
    stroke(255);
    line(0, 200, 1000, 200);
    line(333, 200, 333, 700);
    line(666, 200, 666, 700);
}