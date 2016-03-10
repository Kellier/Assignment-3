ArrayList<Object> objects = new ArrayList<Object>();

boolean[] keys = new boolean[512];

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
}

void draw()
{
  background(0);
  
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    go.position();
    go.thing();
  }
}