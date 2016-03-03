package Assignment;

import processing.core.PApplet;

public class Player extends Object
{

	public Player(PApplet papplet) 
	{
		super(papplet);
	}
	
	public Player(float startx, float starty)
	{
		super(startx, starty, 50);
	}

	@Override
	void position() 
	{
		//If statement to determine the movement of the ball
		//They also act as barriers for the paddle
		//It cannot go beyond the screens height
		if(papplet.mouseY < 0)
		{
			papplet.mouseY = 0;
		}
		
		if(papplet.mouseY > papplet.height)
		{
			papplet.mouseY = papplet.height;
		}		
	}

	@Override
	void thing() 
	{
		//Method to draw the paddle
		papplet.stroke(7, 29, 103);
		papplet.fill(7, 29, 103);
		papplet.rect(recta, papplet.mouseY, w, h);		
	}

}
