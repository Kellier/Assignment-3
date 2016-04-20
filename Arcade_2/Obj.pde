abstract class Obj 
{
  PVector pos;
  PVector move;
  float speed = 5.0f;;
  float wallx, wally;
  color c;
  float w, h;
  float foodx, foody;
  float enemyx, enemyy;
  float recta;
  boolean correct;
  int[] snakex;
  int[] snakey;
  int snx, sny;
  int forx, fory;
  int points;
  int snakel;
  int cx, cy;
  float fdx, fdy;
  int p_lives;
  float W;
  float halfw;
  int time = 12;
  int score;
  int health;
  
  Obj()
  {
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  Obj(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.W = W;
    this.halfw = w * 0.5f;
    this.w = 10;
    this.h = 100;
    this.wallx = 350;
    this.wally = 450;
    this.foodx = -1;
    this.foody = -1;
    this.forx = 0;
    this.fory = 0;
    this.enemyx = 0;
    this.enemyy = 0; 
    this.recta = 970.0f;
    p_lives = 5;
    this.correct = true;
    this.snakex = new int[100];
    this.snakey = new int[100];
    this.snakel = 1;
    points = 0;
    this.cx = width / 2;
    this.cy = height / 2;
    this.snx = cx - 5;
    this.sny = cy - 5;
      
  }
  
  abstract void position();
  abstract void thing();
  abstract void newgame();
}