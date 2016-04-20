class H_Space extends Obj
{
  float a = 833;
  float b = 650;
  float speedx = 7.0f;
  
  H_Space()
  {
    super(width * 0.5f, height * 0.5f, 50);
    println("In H_Space Default Constructor");
  }
  
  H_Space(float startx, float starty)
  {
    super(startx, starty, 50);
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
    stroke(245, 250, 20);
    line(enemyx, enemyy, enemyx - 15, enemyy - 15);
    line(enemyx - 15, enemyy - 15, enemyx - 15, enemyy + 30);
    line(enemyx - 15, enemyy + 30, enemyx, enemyy);
    line(enemyx, enemyy, enemyx + 15, enemyy - 15);
    line(enemyx + 15, enemyy - 15, enemyx + 15, enemyy + 30);
    line(enemyx + 15, enemyy + 30, enemyx, enemyy); 
    popMatrix();
    
    stroke(40, 232, 23);
    line(a, b, a - 20, b + 30);
    line(a - 20, b + 30, a, b + 15);
    line(a, b + 15, a + 20, b + 30);
    line(a + 20, b + 30, a, b);
  }
  
  void newgame()
  {
  }
    
}