//Class for Player2 which inherits the abstract class Object
class Player extends Object
{
  
  Player()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Player Default Constructor");
  }
  
  //Constructor with starting point, variables to move and color return types
  Player(float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.c = c;
  }
  
  //Abstract method to set position of Player 2
  void position()
  {    
    if(mouseY < 0)
    {
      mouseY = 0;
    }
  
    if(mouseY > height)
    {
      mouseY = height;
    }    
  }
  
  //Abstract method to draw the padle and use the mouse to control movement
  void thing()
  {
    stroke(c);
    fill(c);
    rect(recta, mouseY, w, h);
  }
  
  void newgame()
  {
  }

}