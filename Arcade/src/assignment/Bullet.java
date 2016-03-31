package assignment;

import processing.core.*;

public class Bullet extends Obj implements EnemyHit
{
	PApplet papplet;
	
	public Bullet(PApplet papplet, float x, float y) 
	{
		super(papplet, x, y);
		speed = 10.0f;
		// TODO Auto-generated constructor stub
	}

	@Override
	void position() 
	{
	    move.mult(speed);
	    pos.y -= speed * 2;
	    
	    if (pos.y < 0)
	    {
	    	Obj.remove(this);
	    }
		
	}

	@Override
	void thing() 
	{
	    papplet.stroke(40, 232, 23);
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.line(0, -5, 0, 5);
	    papplet.popMatrix();
		
	}

	@Override
	public void applyTo(Enemy enemy) 
	{
		enemy.health -= 5;
	}

	@Override
	void newgame() 
	{
		speed = 10.0f;		
	}

}
