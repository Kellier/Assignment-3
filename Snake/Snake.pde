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
  
  frameRate(10);
  
  Player ply = new Player('W', 'A', 'D', 'S', 'R', color(58, 209, 36));
  objects.add(ply);
  
  Food fd = new Food('R');
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
    //go.reset();
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
          if(other.foodx == go.snx && other.foody == go.sny)
          {
            go.correct = true;
            go.snakel ++;
            go.points++;
            other.reset();
          }
        }
      }
    }
  }
}