class Player extends Object implements FoodGone
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
    score = 0;
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
    
    if(keys[down])
    {
      pos.y += speed;
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
    
    stroke(255, 0, 0);
    fill(255, 0, 0);
    textSize(20);
    text("Score: " + score, 500, 20); 
  }
  
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    stroke(c);
    fill(c);
    rect(halfW, -halfW, w, h);
    popMatrix();
  }
  
  void applyTo(Food fd)
  {
    fd.health -= 5;
  }
}