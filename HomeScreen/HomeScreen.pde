ArrayList<Object> objects = new ArrayList<Object>();

PFont myFont;

void setup()
{
  size(1000, 700);
  
  H_Snake snake = new H_Snake(random(10, 330), random(210, 690), color(58, 209, 36));
  objects.add(snake);
  
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
    
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
    }
}