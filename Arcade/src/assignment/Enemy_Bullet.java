package assignment;

//Importing various libraries
import processing.core.*;

//Enemy_Bullet class for space invaders game which extends the abstract class and implements the Hit interface
public class Enemy_Bullet extends Obj implements Hit
{
	//Fields
	PApplet papplet;

	//Constructor to set the speed
	public Enemy_Bullet() 
	{
		speed = 10.0f;
	}

	@Override
	//Method to set position and movement of the object
	void position() 
	{
	    move.mult(speed);
	    pos.y += speed * 2;
	    
	    if (pos.y > papplet.height)
	    {
	      //Remove object if it goes beyond the screen
	      Menu.objes.remove(this);
	    }
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw enemy bullets
	    papplet.stroke(255);
	    papplet.pushMatrix();
	    papplet.translate(pos.x, pos.y);
	    papplet.line(enemyx - 15, enemyy + 30, enemyx - 15, enemyy + 25);
	    papplet.line(enemyx + 15, enemyy + 30, enemyx + 15, enemyy + 25);
	    papplet.popMatrix(); 
		
	}

	@Override
	//Interface to reduce the Enemy's health if its hit with a bullet
	public void applyTo(Shooter ply) 
	{
		ply.health -= 5;
	}
	
	//Abstract method to reset the variables
	void newgame()
	{
		speed = 10.0f;
	}

}
