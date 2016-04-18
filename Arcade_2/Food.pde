class Food extends Obj
{
  
  char reset;
  
  Food()
  {
  }
  
  Food(char reset)
  {
    this.reset = reset;
  }
    
  void position()
  {
    if(keys[reset])
    {
      reset();
    }
  }
  
  void thing()
  {
    fill(250, 30, 10);
    
    while(correct)
    {
      int x = (int)random(1, width/ 10);
      int y = (int)random(1, height / 10);
      
      foodx = (int)(5 + x * 10);
      foody = (int)(5 + y * 10);
      
      for(int i = 0; i < snakel; i++)
      {
        if(x == snakex[i] && y == snakey[i])
        {
          correct = true;
          i = snakel;
        }
        else
        {
          correct = false;
        }
      }
    }
    rect(foodx - 5, foody - 5, w, h);
  }
  
  void newgame()
  {
    foodx = -1;
    foody = -1;
    snakel = 1;
    correct = true;
  }
}