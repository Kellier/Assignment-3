class Enemy_Bullet extends Obj implements Hit
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
    //line(0, -halfw, 0, 5);
    popMatrix(); 
  }
  
  void position()
  {
    move.mult(speed);
    pos.y += speed * 2;
    
    if (pos.y > height)
    {
      objes.remove(this);
    }
  }
  
  void applyTo(Shooter ply)
  {
    ply.health -= 5;
  }
  
  void newgame()
  {
    speed = 10.0f;
  }
}