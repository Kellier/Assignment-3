ArrayList<Object> objects = new ArrayList<Object>();

boolean[] keys = new boolean[512];

PFont myFont;

//Method to move the paddles if pressed the paddle will move
void keyPressed()
{
  keys[keyCode] = true;
}

//Method to move the paddles if released the paddle will stop
void keyReleased()
{
  keys[keyCode] = false;
}

void setup()
{
  size(1000, 700);
  
  Shooter ply = new Shooter('A', 'D', ' ', 500, 650, color(40, 232, 23));
  objects.add(ply);
  
  for(int i = 0; i < 10; i++)
  {
    Enemy en = new Enemy(random(0, width), random(50, 550), color(245, 250, 20));
    objects.add(en);
  }
}

void draw()
{
  background(0);
  
  myFont = loadFont("Arcade1.vlw");
  
  int s = second();
  int m = minute();
  
  stroke(40, 232, 23);
  fill(40, 232, 23);
  textSize(20);
  text("Time: " + m + s, 750, 50);
  
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    go.position();
    go.thing();
  }
}