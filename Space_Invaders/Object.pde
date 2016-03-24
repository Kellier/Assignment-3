abstract class Object
{
  PVector pos;
  PVector move;
  float theta = 0.0f;
  float speed = 5.0f;
  color c;
  float enemyx, enemyy;
  float w;
  float halfw;
  int time = 12;
  int score;
  int health;
  
  
  Object()
  {
    // Constructor chaining
    this(width * 0.5f, height  * 0.5f, 50);     
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    move = new PVector(0, -1);
    this.w = w;
    this.halfw = w * 0.5f;
    this.theta = 0.0f;
    this.enemyx = 0;
    this.enemyy = 0;
  }
  
  abstract void position();
  abstract void thing();
}