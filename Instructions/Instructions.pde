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