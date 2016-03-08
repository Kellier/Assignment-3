class Player extends Object
{
  char up;
  char left;
  char right;
  
  Player()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player Default Constructor");
  }
  
  Player(char up, char left, char right, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.up = up;
    this.left = left;
    this.right = right;
    this.c = c;    
  }
  
  void position()
  {
    move.mult(speed);
    
    if(keys[up])
    {
      pos.y -= speed;
    }
    
    if(keys[left])
    {
      pos.x -= speed;
    }
    
    if(keys[right])
    {
      pos.x += speed;
    }
    
    if(pos.y > height)
    {
      pos.y = height;
    }
    
    if(pos.y < 0)
    {
      pos.y = 0;
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
    fill(c);
    rect(0, 0, w, h);
    popMatrix();
  }
}