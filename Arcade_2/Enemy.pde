class Enemy extends Obj
{
  float speedx = 7.0f;
  char newg;
  
  Enemy()
  {
    // Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height  * 0.5f, 15);     
    println("In Enemy Default Constructor");
  }
  
  Enemy(float startx, float starty, char newg)
  {
    super(startx, starty, 50);
    this.newg = newg;
    health = 5;
  }
  
  void position()
  {
    move.mult(speed);
    
    if(time > 30)
    {
      Enemy_Bullet bullet = new Enemy_Bullet();
      bullet.pos.x = pos.x;
      bullet.pos.y = pos.y;
      objes.add(bullet);
      time = 0;
    }
    
    if(pos.x > width)
    {
      speedx = -speedx;
    }
    
    if(pos.x < 0)
    {
      speedx = - speedx;
    }
    
    if(health <= 0)
    {
      objes.remove(this);
      for(int i = 0; i < objes.size(); i++)
      {
        Obj go = objes.get(i);
        if(go instanceof Shooter)
        {
          go.score += 10;
        }
      }
    }
    
    pos.x = pos.x + speedx;
    time ++;
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(245, 250, 20);
    line(enemyx, enemyy, enemyx - 15, enemyy - 15);
    line(enemyx - 15, enemyy - 15, enemyx - 15, enemyy + 30);
    line(enemyx - 15, enemyy + 30, enemyx, enemyy);
    line(enemyx, enemyy, enemyx + 15, enemyy - 15);
    line(enemyx + 15, enemyy - 15, enemyx + 15, enemyy + 30);
    line(enemyx + 15, enemyy + 30, enemyx, enemyy); 
    popMatrix();
  }
  
  void newgame()
  {
    speed = 5.0f;
    pos.x = random(0, width);
    pos.y =+ 50;
  }
}