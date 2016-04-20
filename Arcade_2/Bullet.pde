class Bullet extends Obj implements EnemyHit
{ 
  void applyTo(Enemy enemy)
  {
    enemy.health -= 5;
  }
  
  Bullet()
  {
    speed = 10.0f;
  }
  
  void thing()
  {
    stroke(40, 232, 23);
    pushMatrix();
    translate(pos.x, pos.y);
    line(0, -5, 0, 5);
    popMatrix();
  }
  
  void position()
  {
    move.mult(speed);
    pos.y -= speed * 2;
    
    if (pos.y < 0)
    {
      objes.remove(this);
    }
  }
  
  void newgame()
  {
    speed = 10.0f;
  }
}