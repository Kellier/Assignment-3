ArrayList<Object> objects = new ArrayList<Object>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

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
  
  for(int i = 0; i < width; i += 1000)
  {
    for(int j = 50; j < 600; j += 50)
    {
      Enemy en = new Enemy(random(i, width), j, color(245, 250, 20));
      objects.add(en);
    }
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
  text("Time: " + m + s, 750, 20);

  
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    go.position();
    go.thing();
  }
  
  for(int i = bullets.size() - 1 ; i >= 0   ;i --)
  {
    Bullet b = bullets.get(i);
    b.position();
    b.thing();
  }
}