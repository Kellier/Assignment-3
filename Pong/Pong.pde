//Various array lists to incrmemnt different methods in classes for the draw method
ArrayList<Object> objects = new ArrayList<Object>();
ArrayList<Star> stars = new ArrayList<Star>();

//Increment all keys for control use
boolean[] keys = new boolean[512];

void setup()
{
  size(1000, 700);
    
  //Set variables for the Player 21 paddle including positions, variables for movement and color
  Player ply = new Player(970, 290, color(7, 29, 103));
  objects.add(ply);
  
  //Set variables for the ball including positions and color
  Ball ball = new Ball('R','N', random(100, 900), random(0, height), color(255));
  objects.add(ball);
  
  //Set variables for the Stars in the medium and hard screen
  //For loop sets the amount of stars on the screen
  for(int i = 0; i < 40; i ++)
  {
    Star star = new Star(
        random(0, width)
        , random(0, height)
        , random(10, 50)
        , color(random(100, 255), random(100, 255), random(100, 255))
        , (int) random(5, 10)
        );
    stars.add(star);
  }
}

void draw()
{
   background(0);
  
  //Load data from the arrray list to increment the abstract methods
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    Object go = objects.get(i);
    go.position();
    go.thing();
  }
  
  //Load data from the Stars array
  for(Star star: stars)
  {
    star.position();
    star.thing();
  }

  //Call GameLives method
  GameLives();
}

//Game lives method uses polymorphism to indicate what happens when either player loses all their lives
void GameLives()
{
  //Load all data from objects array list
  for(int i = objects.size() - 1; i >= 0; i--)
  {
    //Name the global variable
    Object go = objects.get(i);
    if(go instanceof Ball)
    {      
      //If statement to indicate what happens when player 1 loses all their lives
      if(go.p_lives == 0)
      {
        background(0);
        textAlign(CENTER, CENTER);
        textSize(50);
        fill(227, 11, 11);
        text("Computer Wins, You Lose Chap!!", width / 2, height / 2);
        text("Press N to restart", width / 2, 400);
      }
    }
      
  }
}