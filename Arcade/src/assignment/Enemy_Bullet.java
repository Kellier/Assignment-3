package assignment;

import processing.core.*;

public class Enemy_Bullet extends Obj implements Hit
{
	PApplet papplet;

	public Enemy_Bullet() 
	{
		speed = 10.0f;
	}

	@Override
	void position() 
	{
	    move.mult(speed);
	    pos.y += speed * 2;
	    
	    if (pos.y > papplet.height)
	    {
	      Menu.objes.remove(this);
	    }
		
	}

	@Override
	void thing() 
	{
	    papplet.stroke(255);
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.line(enemyx - 15, enemyy + 30, enemyx - 15, enemyy + 25);
	    papplet.line(enemyx + 15, enemyy + 30, enemyx + 15, enemyy + 25);
	    //line(0, -halfw, 0, 5);
	    papplet.popMatrix(); 
		
	}

	@Override
	public void applyTo(Shooter ply) 
	{
		ply.health -= 5;
	}
	
	void newgame()
	{
		speed = 10.0f;
	}

}
