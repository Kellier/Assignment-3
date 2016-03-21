class Bullet extends Object
{   
  Bullet()
  {
    speed = 10.0f;
  }
  
  void thing()
  {
    stroke(c);
    pushMatrix();
    translate(pos.x, pos.y);
    line(0, -5, 0, 5);
    popMatrix();
  }
  
  void position()
  {
    move.mult(speed);
    pos.add(move);
    
    if (pos.y < 0)
    {
      bullets.remove(this);
    }
  }
}