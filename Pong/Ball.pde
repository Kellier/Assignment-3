//Class for Ball which inherits the abstract class Object
class Ball extends Object
{
  //Fields for ball
  float br = 10;
  char reset;
  char newg;
  //Constructor with no return type
  Ball()
  {
    //Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height * 0.5f, 50);
    println("In Ball Default Constructor");
  }
  
  //Constructor with starting point and color return types
  Ball(char reset, char newg, float startx, float starty, color c)
  {
    super(startx, starty, 50);
    this.reset = reset;
    this.newg = newg;
    this.c = c;
  }
  
  //Abstract method to set position of the ball
  void position()
  {
    //If statement which indicates what happens when the ball hits off the paddle for Player
    if((pos.x >= recta - br) && (pos.x <= (recta - br) + w) && (pos.y >= mouseY ))
    {
      speedx = -speedx;
      c = color(7, 29, 103);
    }
    
    //If statement so ball bounces off the walls
    if(pos.y > height - 20)
    {
      speedy = -speedy;
    }
    
    //If statement so ball bounces off the walls
    if(pos.y < 20)
    {
      speedy = -speedy;
    }
    
    //If statement that decrements the Player 2 lives and resets the ball position
    if(pos.x > width)
    {
      p_lives --;
      reset();
    }
    
    //If statement that decrements the Player 1 lives and resets the ball position
    if(pos.x < br)
    {
      speedx = -speedx;
    }
    
    
    //If pressed the game will reset the ball position
    if(keys[reset])
    {
      reset();
    }
    
    //If pressed the game will start a new one
    if(keys[newg])
    {
      newgame();
    }
    
    //Increments the speed of the ball
    pos.x = pos.x + speedx;
    pos.y = pos.y + speedy;
  }
  
  //Abstract method to draw the ball using matrices and PVectors for the positions
  void thing()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(c);
    fill(c);
    ellipse(0, 0, br * 2, br * 2);
    popMatrix();
    
    fill(7, 29, 103);
    textSize(30);
    text("Player:  " + p_lives, 600, 40);
  } 
  
  //Method to reset the position of the ball when it goes passed the walls
  void reset()
  {
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }
  
  //Method to restart the game with new lives and new positions
  void newgame()
  {
    speedx = 8;
    speedy = 8;
    p_lives = 5;
    pos.x = random(100, 900);
    pos.y = random(0, height);
    br = 10;
  }

}