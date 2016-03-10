class Shooter extends Object
{
  char left;
  char right;
  char shoot;
  
  Shooter()
  {
    // Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height  * 0.5f, 50);     
    println("In Shooter Default Constructor");
  }
  
  Shooter(char left, char right, char shoot, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.left = left;
    this.right = right;
    this.shoot = shoot;
    this.c = c;
  }
  
  void position()
  {
    move.mult(speed);
    
    if(keys[left])
    {
      pos.x -= speed;
    }
    
    if(keys[right])
    {
      pos.x += speed;
    }
    
    if(pos.x > width)
    {
      pos.x = 0;
    }
    
    if(pos.x < 0)
    {
      pos.x = width;
    }
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    line(- halfw, halfw, 0, - halfw);
    line(0, - halfw, halfw, halfw);
    line(halfw, halfw, 0, 0);
    line(- halfw, halfw, 0, 0);
    popMatrix();
  }
}