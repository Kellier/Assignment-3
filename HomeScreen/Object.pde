abstract class Object
{
  PVector pos;
  float speedx, speedy;
  float wallx, wally;
  color c;
  float w, h;
  float foodx, foody;
  
  Object()
  {
    this(width * 0.5f, height * 0.5f, 50);
  }
  
  Object(float x, float y, float w)
  {
    pos = new PVector(x, y);
    this.w = 10;
    this.h = 100;
    this.speedx = 8;
    this.speedy = 8;
    this.foodx = random(0, 330);
    this.foody = random(200, 700);
  }
  
  abstract void position();
  abstract void thing();
  
}