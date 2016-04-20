class Snake extends Obj 
{
  char up;
  char left;
  char right;
  char down;
  char reset;
  
  Snake()
  {

  }

  Snake(char up, char left, char right, char down, char reset)
  {
    this.up = up;
    this.left = left;
    this.right = right;
    this.down = down;
    this.reset = reset;
    points = 0;
  }
  
  void position()
  {
    if(keys[up])
    {
      if(snakey[1] != snakey[0] - 10)
      {
        fory = -10;
        forx = 0;
      }
    }
    
    if(keys[down])
    {
      if(snakey[1] != snakey[0] + 10)
      {
        fory = 10;
        forx = 0;
      }
    }
    
    if(keys[left])
    {
      if(snakex[1] != snakex[0] - 10)
      {
        fory = 0;
        forx = -10;
      }
    }
    
    if(keys[right])
    {
      if(snakex[1] != snakex[0] + 10)
      {
        fory = 0;
        forx = 10;
      }
    }
    
    if(keys[reset])
    {
      newgame();
    }
    
    snx += forx;
    sny += fory;
    
    snakex[0] = (int)snx;
    snakey[0] = (int)sny;
    
    if(snx > width - 5 || snx < 5 || sny > height - 5 || sny < 5)
    {
        restart();
    }
    
    
    for(int i = 1; i < snakel; i++)
    {
      if(snx == snakex[i] && sny == snakey[i])
      {
        restart();
      }
    }
    
  }
  
  void thing()
  {
    fill(58, 209, 36);
    noStroke();
    for(int i = 0; i < snakel; i++)
    {
      int x = snakex[i];
      int y = snakey[i];
      rect(x - 5, y - 5, w, w);
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
  
  void newgame()
  {
    background(0);
    points = 0;
    snakel = 1;
    correct = true;
  }
  
  void restart()
  {
    textAlign(CENTER, CENTER);
    textSize(50);
    fill(58, 209, 36);
    text("You Lose", 500, 290);
    text("Press R to Reset", 500, 350);
    text("Score" + points, 500, 410);
  }
}