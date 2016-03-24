class Enemy extends Object
{
  float speedx = 7.0f;
  
  Enemy()
  {
    // Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height  * 0.5f, 15);     
    println("In Enemy Default Constructor");
  }
  
  Enemy(float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.c = c;
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
      objects.add(bullet);
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
      objects.remove(this);
      for(int i = 0; i < objects.size(); i++)
      {
        Object go = objects.get(i);
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
    stroke(c);
    line(enemyx, enemyy, enemyx - 15, enemyy - 15);
    line(enemyx - 15, enemyy - 15, enemyx - 15, enemyy + 30);
    line(enemyx - 15, enemyy + 30, enemyx, enemyy);
    line(enemyx, enemyy, enemyx + 15, enemyy - 15);
    line(enemyx + 15, enemyy - 15, enemyx + 15, enemyy + 30);
    line(enemyx + 15, enemyy + 30, enemyx, enemyy); 
    popMatrix();
  }
}