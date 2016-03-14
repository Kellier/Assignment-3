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
  }
  
  void position()
  {
    if(pos.x > width)
    {
      speedx = -speedx;
    }
    
    if(pos.x < 0)
    {
      speedx = - speedx;
    }
    
    pos.x = pos.x + speedx;
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