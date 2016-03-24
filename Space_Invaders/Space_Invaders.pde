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
  
  Shooter ply = new Shooter('A', 'D', ' ', 'N', 500, 650, color(40, 232, 23));
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
    
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    go.position();
    go.thing();
  }
  
  bulletCollision1();
  bulletCollision2();
  Screen();
  
}

void bulletCollision1()
{
  for(int i = objects.size()- 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    if(go instanceof Shooter)
    {
      for(int j = objects.size() - 1; j >= 0; j--)
      {
        Object other = objects.get(j);
        if(other instanceof Enemy_Bullet)
        {
          if(go.pos.dist(other.pos) < go.halfw/2 + other.enemyy/2 + other.enemyx/2)
          {
            ((Hit) other).applyTo((Shooter)go);
            objects.remove(other);
          }
        }
      }
    }
  }   
}

void bulletCollision2()
{
  for(int i = objects.size() - 1; i >= 0; i --)
  {
    Object go = objects.get(i);
    if(go instanceof Enemy)
    {
      for(int j = objects.size() - 1; j >= 0; j --)
      {
        Object other = objects.get(j);
        if(other instanceof Bullet)
        {
          if(go.pos.dist(other.pos) < go.enemyx + go.enemyy + other.halfw)
          {
            ((EnemyHit) other).applyTo((Enemy)go);
            objects.remove(other);
          }
        }
      }
    }
  }
}

void Screen()
{
  for(int i = objects.size() - 1; i >= 0; i --)
  {
    Object go = objects.get(i);
    if(go instanceof Shooter)
    {
      if(go.health == 0)
      {
        background(0);
        textAlign(CENTER, CENTER);
        textSize(50);
        fill(40, 232, 23);
        text("You Lose!!", width / 2, height / 2);
        text("Press N for New Game", width / 2, 410);
      }
      else if(go.score == 110)
      {
        background(0);
        textAlign(CENTER, CENTER);
        textSize(50);
        fill(40, 232, 23);
        text("You Win!!", width / 2, height / 2);
        text("Press N for New Game", width / 2, 410);
      }
    }
  }
}
        