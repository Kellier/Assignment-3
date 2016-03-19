class H_Space extends Object
{
  float a = 833;
  float b = 650;
  
  H_Space()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In H_Space Default Constructor");
  }
  
  H_Space(float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.c = c;
  }
  
  void position()
  {
    if(pos.x > 980)
    {
      speedx = -speedx;
    }
    
    if(pos.x < 686)
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
    
    stroke(40, 232, 23);
    line(a, b, a - 20, b + 20);
    line(a - 20, b + 20, a, b + 10);
    line(a, b + 10, a + 20, b + 20);
    line(a + 20, b + 20, a, b);
  }
    
}