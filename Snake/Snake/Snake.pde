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
  
  Player ply = new Player('W', 'A', 'D', 'S', random(0, width), random(50, 650), color(58, 209, 36));
  objects.add(ply);
  
  Food fd = new Food(random(0, width), random(20, 690));
  objects.add(fd);
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
  
  SnakeCollision();
}

void SnakeCollision()
{
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    if(go instanceof Player)
    {
      for(int j = objects.size() - 1; j >= 0; j--)
      {
        Object other = objects.get(j);
        if(other instanceof Food)
        {
          float dist = go.pos.dist(other.pos);
          println(dist);
          println(go.halfW);
          println(other.halfW);
          if(dist < go.halfW + other.halfW)
          {
            
            ((Increase) other).applyTo((Player)go);
            ((FoodGone) go).applyTo((Food)other);
            objects.remove(other);
          }
        }
      }
    }
  }
}
  
  