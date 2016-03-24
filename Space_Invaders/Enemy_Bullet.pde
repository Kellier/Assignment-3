class Enemy_Bullet extends Object
{
  Enemy_Bullet()
  {
    speed = 10.0f;
  }
  
  void thing()
  {
    stroke(255);
    pushMatrix();
    translate(pos.x, pos.y);
    line(enemyx - 15, enemyy + 30, enemyx - 15, enemyy + 25);
    line(enemyx + 15, enemyy + 30, enemyx + 15, enemyy + 25);
    popMatrix(); 
  }
  
  void position()
  {
    move.mult(speed);
    pos.y += speed * 2;
    
    if (pos.y > height)
    {
      objects.remove(this);
    }
    
  }
}