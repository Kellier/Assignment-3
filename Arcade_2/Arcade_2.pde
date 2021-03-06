//Increment control P5 for the menu
import controlP5.*;

//Variables for controlP5
ControlP5 cp5;
Button b;

int buttonValue = 0;

String mode = "Menu";
int a = 0;

//Various array lists to increment different methods in classes for the draw method
//ArrayList for Home Screen
static ArrayList<Obj> objs = new ArrayList<Obj>();
//ArrayList for Space Invaders
static ArrayList<Obj> objes = new ArrayList<Obj>();
//ArrayList for Pong
static ArrayList<Obj> obje = new ArrayList<Obj>();
//ArrayList for Snake
static ArrayList<Obj> obj = new ArrayList<Obj>();

PFont myFont;

//Increment all keys for control use
static boolean[] keys = new boolean[512];
  
 //Method to move the paddles if pressed the paddle will move
public void keyPressed()
{
  keys[keyCode] = true;
}

//Method to move the paddles if released the paddle will stop
public void keyReleased()
{
  keys[keyCode] = false;
}

void setup()
{ 
  size(1000, 700); 
  
  //Create the buttons for the menu
  smooth();
  frameRate(30);
  cp5 = new ControlP5(this);
  
  //Name the buttons and set for the menu
  cp5.addButton("Menu",0,0,0,80,19);
  cp5.addButton("Instructions",0,200,0,80,19);
  cp5.addButton("Pong",0,400,0,80,19);
  cp5.addButton("Snake",0,600,0,80,19);
  cp5.addButton("Space Invaders",0,800,0,80,19);
  
  //Call Snake method for snake game
  Snake sna = new Snake('W', 'A', 'D', 'S', 'N');
  obj.add(sna);
  
  //Call Food method for snake game
  Food fd = new Food('N');
  obj.add(fd);
  
  //Call H_Snake method for homescreen
  H_Snake snake = new H_Snake();
  objs.add(snake);
  
  //Call H_Pong method for homescreen
  H_Pong pong = new H_Pong(random(365, 665), random(300, 650));
  objs.add(pong);
  
  //Call H_Space method for homescreen
  H_Space space = new H_Space(random(686, 980), random(300, 600));
  objs.add(space);
  
  //Call Shooter method for space invaders
  Shooter ply = new Shooter('A', 'D', ' ', 'N', 500, 650);
  objes.add(ply);
  
  //Call Pong method for pong
  Player pl = new Player(970, 290);
  obje.add(pl);
  
  Ball ball = new Ball('R','N', random(100, 900), random(0, height));
  obje.add(ball);
  
  //For loop to create 40 stars
  for(int j = 0; j < 40; j++)
  {
    //Call Star method for pong
    Star star = new Star(        random(0, width)
        , random(0, height)
        , random(10, 50)
        , (int) random(5, 10));
    obje.add(star);
  }
  
  //For loop to create 10 enemy ships in space invaders
  for(int i = 0; i < width; i += 1000)
  {
    for(int j = 50; j < 600; j += 50)
    {
      //Call Enemy method for Space Invaders
      Enemy en = new Enemy(random(i, width), j, 'N');
      objes.add(en);
    }
  }
}
void draw()
{
  //Statement calls the HomeScreen
  if(mode == "Menu")
  {
    background(0);
    
    //Load font
      myFont = loadFont("Arcade1.vlw");
      
      stroke(255);
      fill(255);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(90);
      text("Arcade", 500, 90);
      
      stroke(255, 0, 0);
      fill(255, 0, 0);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(90);
      text("Snake", 167, 240);
      
      stroke(245, 250, 20);
      fill(245, 250, 20);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(90);
      text("Pong", 500, 240);
      
      stroke(40, 232, 23);
      fill(40, 232, 23);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(45);
      text("Space", 833, 220);
      
      stroke(40, 232, 23);
      fill(40, 232, 23);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(45);
      text("Invaders", 833, 270);
      
      stroke(255);
      line(0, 200, 1000, 200);
      line(333, 200, 333, 700);
      line(666, 200, 666, 700);
      line(0, 295, 1000, 295);
      
      //For loop to call homescreen methods
      for(int i = objs.size() - 1; i >= 0; i--)
      {
        Obj go = objs.get(i);
        go.position();
        go.thing();
      }
      
  }
  
  //Statement calls Instructions screen
  if(mode == "Instructions")
  {
    background(0);
    stroke(255);
      line(0, 0, 1000, 0);
      line(0, 95, 1000, 95);
      line(333, 0, 333, 700);
      line(666, 0, 666, 700);
      
      stroke(255, 0, 0);
      fill(255, 0, 0);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(90);
      text("Snake", 167, 40);
      textSize(45);
      text("Instructions:", 167, 135);
      textSize(30);
      text("W : Up", 167, 195);
      text("S : Down", 167, 255);
      text("A : Left", 167, 315);
      text("D : Right", 167, 375);
      text("R : Restart", 167, 435);
      text("N : New Game", 167, 495);
      text("Aim:", 167, 545);
      textSize(20);
      text("Grow your Snake and", 167, 575);
      text("last as long as", 167, 605);
      text("you can!", 167, 635);
      
      
      stroke(245, 250, 20);
      fill(245, 250, 20);
      textFont(myFont);
      textAlign(CENTER, CENTER);
      textSize(90);
      text("Pong", 500, 40);
      textSize(45);
      text("Instructions:", 500, 135);
    textSize(30);
    text("Mouse : Move", 500, 195);
    text("R : Restart", 500, 255);
    text("N : New Game", 500, 315);
    text("Aim:", 500, 365);
    textSize(20);
    text("Stop the ball from", 500, 395);
    text("scoring a goal", 500, 425);
    text("using your paddle!", 500, 455);
    
    stroke(40, 232, 23);
    fill(40, 232, 23);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("Space", 833, 20);
    
    stroke(40, 232, 23);
    fill(40, 232, 23);
    textFont(myFont);
    textAlign(CENTER, CENTER);
    textSize(45);
    text("Invaders", 833, 70);
    textSize(45);
    text("Instructions:",  833, 135);
    textSize(30);
    text("A : Left", 833, 195);
    text("D : Right", 833, 255);
    text("Space : Shoot", 833, 315);
    text("R : Restart", 833, 375);
    text("N : New Game", 833, 435);
    text("Aim:", 833, 485);
    textSize(20);
    text("Avoid the enemy bullets", 833, 515);
    text("and last as long as", 833, 545);
    text("you can by shooting", 833, 575);
    text("the enemy ships", 833, 605);
  }
  
  //Statement calls Pong game
  if(mode == "Pong")
  {
    background(0);
    
    myFont = loadFont("Arcade1.vlw");
      
    //For loop calls pong methods
    for(int i = obje.size() - 1; i >= 0; i--)
    {
      Obj go = obje.get(i);
      go.position();
      go.thing();
      //go.newgame();
    }
    
    //Call method to alter lives of player
    GameLives();
  }
  
  //Statement calls snake game
  if(mode == "Snake")
  {
    background(0);
    
    frameRate(10);
    
    //For loop calls methods for snake game
    for(int i = obj.size() - 1; i >= 0; i--)
    {
      Obj go = obj.get(i);
      go.position();
      go.thing();
    }
    
    //Call method to alter the food in snake
    SnakeCollision();      
  }
  
  //Statement calls space invaders game
  if(mode == "Space Invaders")
  {
    background(0);
    
    myFont = loadFont("Arcade1.vlw");
    
    //For loop calls methods for space invaders game
    for(int i = objes.size() - 1; i >= 0; i--)
    {
      Obj go = objes.get(i);
      go.position();
      go.thing();
      //go.newgame();
    }
    
    //Call method to alter health of the shooter
    bulletCollision1();
    //Call method to alter health of the enemy
    bulletCollision2();
    //Call method for new game screen
    Screen();
  }
}

//Method using polymorphism to reduce the health of the shooter using an interface in space invaders
void bulletCollision1()
{
  for(int i = objes.size()- 1; i >= 0; i--)
  {
    Obj go = objes.get(i);
    if(go instanceof Shooter)
    {
      for(int j = objes.size() - 1; j >= 0; j--)
      {
        Obj other = objes.get(j);
        if(other instanceof Enemy_Bullet)
        {
          if(go.pos.dist(other.pos) < go.halfw + other.enemyy + other.enemyx)
          {
            ((Hit) other).applyTo((Shooter)go);
            objes.remove(other);
          }
        }
      }
    }
  }   
}

//Method using polymorphism to reduce the health of the enemy using an interface in space invaders
void bulletCollision2()
{
  for(int i = objes.size() - 1; i >= 0; i --)
  {
    Obj go = objes.get(i);
    if(go instanceof Enemy)
    {
      for(int j = objes.size() - 1; j >= 0; j --)
      {
        Obj other = objes.get(j);
        if(other instanceof Bullet)
        {
          if(go.pos.dist(other.pos) < go.enemyx + go.enemyy + other.halfw)
          {
            ((EnemyHit) other).applyTo((Enemy)go);
            objes.remove(other);
          }
        }
      }
    }
  }
}

//Method using polymorphism to display a different screen if shooter dies or all enemies are killed in space invaders
void Screen()
{
  for(int i = objes.size() - 1; i >= 0; i --)
  {
    Obj go = objes.get(i);
    if(go instanceof Shooter)
    {
      if(go.health == 0)
      {
        background(0);
        textAlign(CENTER, CENTER);
        textSize(50);
        fill(40, 232, 23);
        text("You Lose!!", width / 2, height / 2);
        text("Press N for New Game", width / 2, 410);
      }
      else if(go.score == 110)
      {
        background(0);
        textAlign(CENTER, CENTER);
        textSize(50);
        fill(40, 232, 23);
        text("You Win!!", width / 2, height / 2);
        text("Press N for New Game", width / 2, 410);
      }
    }
  }
}

//Method uses polymorphism to indicate what happens when either player loses all their lives in pong
void GameLives()
{

  for(int i = obje.size() - 1; i >= 0; i--)
  {
    Obj go = obje.get(i);
    if(go instanceof Ball)
    {  
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

//Method using polymorphism to change position of the food if its eaten in snake
void SnakeCollision()
{
  for(int i = obj.size() - 1; i >= 0; i--)
  {
    Obj go = obj.get(i);
    if(go instanceof Snake)
    {
      for(int j = obj.size() - 1; j >= 0; j--)
      {
        Obj other = obj.get(j);
        if(other instanceof Food)
        {
          if(other.foodx == go.snx && other.foody == go.sny)
          {
            go.correct = true;
            go.snakel ++;
            go.points++;
            other.newgame();
          }
        }
      }
    }
  }
}


//Method to make sure control P5 works
public void controlEvent(ControlEvent theEvent)
{
  mode = (theEvent.getController().getName());
}
  