package assignment;

import processing.core.*;

public class Shooter extends Obj
{
	PApplet papplet;
	char left, right, shoot, newg;

	public Shooter(PApplet papplet, float startx, float starty, char left, char right, char shoot, char newg) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	    this.left = left;
	    this.right = right;
	    this.shoot = shoot;
	    this.newg = newg;
	    health = 100;
	    score = 0;
	}

	@Override
	void position() 
	{
	    move.mult(speed);
	    
	    if(Menu.keys[left])
	    {
	      pos.x -= speed;
	    }
	    
	    if(Menu.keys[right])
	    {
	      pos.x += speed;
	    }
	    
	    if(Menu.keys[shoot] && time > 12)
	    {
	        Bullet bullet = new Bullet();
	        bullet.pos.x = pos.x;
	        bullet.pos.y = pos.y;
	        Menu.objes.add(bullet);
	        time = 0;
	    }
	    
	    if(Menu.keys[newg])
	    {
	      newgame();
	    }
	    
	    if(pos.x > papplet.width)
	    {
	      pos.x = 0;
	    }
	    
	    if(pos.x < 0)
	    {
	      pos.x = papplet.width;
	    }
	    
	    time ++;
	    
	        
	    papplet.stroke(40, 232, 23);
	    papplet.fill(40, 232, 23);
	    papplet.textSize(20);
	    papplet.text("Health: " + health, 250, 20);
	    papplet.text("Score: " + score, 500, 20);
		
	}

	@Override
	void thing() 
	{
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.stroke(40, 232, 23);
	    papplet.line(- halfw, halfw, 0, - halfw);
	    papplet.line(0, - halfw, halfw, halfw);
	    papplet.line(halfw, halfw, 0, 0);
	    papplet.line(- halfw, halfw, 0, 0);
	    papplet.popMatrix();
		
	}
	
    void newgame()
    {
    	speed = 5.0f;
    	pos.x = 500;
    	pos.y = 650;
    	health = 100;
    	score = 0;
    }

}
