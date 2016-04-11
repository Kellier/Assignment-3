class Player extends Object 
{
  char up;
  char left;
  char right;
  char down;
  
  Player()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f);
    println("In Player Default Constructor");
  }

  Player(char up, char left, char right, char down, color c)
  {
    this.up = up;
    this.left = left;
    this.right = right;
    this.down = down;
    this.c = c;  
    points = 0;
  }
  
  void position()
  {
    if(keys[up])
    {
      if(snakey[1] != snakey[0] - 10)
      {
        speedy = -10;
        speedx = 0;
      }
    }
    
    if(keys[down])
    {
      if(snakey[1] != snakey[0] + 10)
      {
        speedy = 10;
        speedx = 0;
      }
    }
    
    if(keys[left])
    {
      if(snakex[1] != snakex[0] - 10)
      {
        speedy = 0;
        speedx = -10;
      }
    }
    
    if(keys[right])
    {
      if(snakex[1] != snakex[0] + 10)
      {
        speedy = 0;
        speedx = 10;
      }
    }
    
    snx += speedx;
    sny += speedy;
    
    snakex[0] = (int)snx;
    snakey[0] = (int)sny;
    
    /*if(snx > width - 5 || snx < 5 || sny > height - 5 || sny < 5)
    {
      
    }
    */
    
  }
  
  void thing()
  {
    fill(c);
    for(int i = 0; i < snakel; i++)
    {
      int x = snakex[i];
      int y = snakey[i];
      rect(x - 5, y - 5, w, h);
    }
    
    for(int j = snakel; j > 0; j--)
    {
      snakex[j] = snakex[j - 1];
      snakey[j] = snakey[j - 1];
    } 
    
        
    fill(58, 209, 36);
    textSize(20);
    text("Score: " + points, 500, 20);
  }
}