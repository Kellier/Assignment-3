PFont myFont;

void setup()
{
  size(1000, 700);
}

void draw()
{
  background(0);
  
  myFont = loadFont("Arcade1.vlw");
  
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
  
}