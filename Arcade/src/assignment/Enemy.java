package assignment;

import processing.core.*;

public class Enemy extends Obj
{
	PApplet papplet;
	float speedx = 7.0f;

	public Enemy(PApplet papplet, float startx, float starty) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
		health = 5;
	}

	@Override
	void position()
	{
	    move.mult(speed);
	    
	    if(time > 30)
	    {
	      Enemy_Bullet bullet = new Enemy_Bullet();
	      bullet.pos.x = pos.x;
	      bullet.pos.y = pos.y;
	      Menu.objes.add(bullet);
	      time = 0;
	    }
	    
	    if(pos.x > papplet.width)
	    {
	      speedx = -speedx;
	    }
	    
	    if(pos.x < 0)
	    {
	      speedx = - speedx;
	    }
	    
	    pos.x = pos.x + speedx;
	    time ++;
		
	}

	@Override
	void thing() 
	{
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.stroke(245, 250, 20);
	    papplet.line(enemyx, enemyy, enemyx - 15, enemyy - 15);
	    papplet.line(enemyx - 15, enemyy - 15, enemyx - 15, enemyy + 30);
	    papplet.line(enemyx - 15, enemyy + 30, enemyx, enemyy);
	    papplet.line(enemyx, enemyy, enemyx + 15, enemyy - 15);
	    papplet.line(enemyx + 15, enemyy - 15, enemyx + 15, enemyy + 30);
	    papplet.line(enemyx + 15, enemyy + 30, enemyx, enemyy); 
	    papplet.popMatrix();
		
	}

	@Override
	void newgame() 
	{
		speed = 5.0f;
	}

}