ArrayList<Object> objects = new ArrayList<Object>();

PFont myFont;

void setup()
{
  size(1000, 700);
  
  H_Snake snake = new H_Snake(random(10, 300), random(300, 650), color(58, 209, 36));
  objects.add(snake);
  
  H_Pong pong = new H_Pong(random(365, 665), random(300, 650), color(7, 29, 103));
  objects.add(pong);
}

void draw()
{
  background(0);
  
    myFont = loadFont("Arcade1.vlw");
    
    stroke(255);
    fill(255);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(90);
    text("Arcade", 500, 90);
    
    stroke(255, 0, 0);
    fill(255, 0, 0);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(90);
    text("Snake", 167, 240);
    
    stroke(245, 250, 20);
    fill(245, 250, 20);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(90);
    text("Pong", 500, 240);
    
    stroke(40, 232, 23);
    fill(40, 232, 23);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("Space", 833, 220);
    
    stroke(40, 232, 23);
    fill(40, 232, 23);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("Invaders", 833, 270);
    
    stroke(255);
    line(0, 200, 1000, 200);
    line(333, 200, 333, 700);
    line(666, 200, 666, 700);
    line(0, 295, 1000, 295);
    
    for(int i = objects.size() - 1; i >= 0; i--)
    {
      Object go = objects.get(i);
      go.position();
      go.thing();
    }
}