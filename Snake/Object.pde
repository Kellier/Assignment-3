abstract class Object
{
  int[] snakex;
  int[] snakey;
  float snx, sny;
  int foodx, foody;
  int speedx, speedy;
  int points;
  int snakel;
  int cx, cy;
  float w, h;
  color c;
  
  Object()
  {
    //Constructor chaining
    this(width * 0.5f, height * 0.5f);
  }
  
  Object(float x, float y)
  {
    this.snakex = new int[100];
    this.snakey = new int[100];
    this.w = 10;
    this.h = 10;
    this.foodx = -1;
    this.foody = -1;
    this.speedx = 0;
    this.speedy = 0;
    this.snakel = 1;
    points = 0;
    this.cx = width / 2;
    this.cy = height / 2;
    this.snx = cx - 5;
    this.sny = cy - 5;
   }
  
  abstract void position();
  abstract void thing();
}