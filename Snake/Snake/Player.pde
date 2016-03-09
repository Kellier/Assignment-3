class Player extends Object
{
  char up;
  char left;
  char right;
  char down;
  
  Player()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player Default Constructor");
  }
  
  Player(char up, char left, char right, char down, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.up = up;
    this.left = left;
    this.right = right;
    this.down = down;
    this.c = c;    
  }
  
  void moveup()
  {
    speedx = 0;
    speedy = -1;
  }
  
  void moveleft()
  {
    speedx = -1;
    speedy = 0;
  }
  
  void moveright()
  {
    speedx = +1;
    speedy = 0;
  }
  
  void movedown()
  {
    speedx = 0;
    speedy = +1;
  }
  
  
  void position()
  {
    move.x = sin(theta);
    move.y = - cos(theta);
    
    if(keys[up])
    {
      moveup();
      theta -= 90.0f;
    }
    
    if(keys[left])
    {
      moveleft();
      theta -= 180.0f;
    }
    
    if(keys[right])
    {
      moveright();
      theta += 0.f;
    }
    
    if(keys[down])
    {
      movedown();
      theta += 270.0f;
    }
    
    if(pos.y > height)
    {
      pos.y = 0;
    }
    
    if(pos.y < 0)
    {
      pos.y = height;
    }
    
    if(pos.x > width)
    {
      pos.x = 0;
    }
    
    if(pos.x < 0)
    {
      pos.x = width;
    }
    
    pos.x = pos.x + speedx;
    pos.y = pos.y + speedy;
   
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(c);
    fill(c);
    rect(0, 0, w, h);
    popMatrix();
  }
}