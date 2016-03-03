package Assignment;

import processing.core.*;

public abstract class Object 
{
	PApplet papplet;
	PVector pos;
	float recta;
	float speed = 5.0f;
	float speedx, speedy;
	float w, h;
	int p_lives;
	
	public Object(PApplet papplet) 
	{
		this.papplet = papplet;
		pos = new PVector(papplet.width / 2, papplet.height / 2);
		this.recta = 970.0f;
		this.speedx = 8;
		this.speedy = 8;
		this.w = 5;
		this.h = 120;
		p_lives = 5;	
	}
	
	public Object(float x, float y) 
	{
		//Constructor chaining
	}
	
	//Abstract methods for all classes
	abstract void position();
	abstract void thing();
}
