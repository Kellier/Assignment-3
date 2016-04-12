package assignment;

//Importing various libraries
import processing.core.*;

//Player class for pong which extends the abstract class
public class Player extends Obj 
{
	//Fields
	PApplet papplet;
	
	//Constructor to declare the start point of the paddle
	public Player(PApplet papplet, float startx, float starty) 
	{
		super(papplet, startx, starty);
		this.papplet = papplet;
	}

	@Override
	//Method to set position and movement of the object
	void position() 
	{
		//move with the mouse
	    if(papplet.mouseY < 0)
	    {
	      papplet.mouseY = 0;
	    }
	    
	    //Error Check
	    if(papplet.mouseY > papplet.height)
	    {
	      papplet.mouseY = papplet.height;
	    } 
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw the paddle
	    papplet.stroke(7, 29, 103);
	    papplet.fill(7, 29, 103);
	    papplet.rect(recta, papplet.mouseY, w, h);
	}

	@Override
	//Abstract method to reset the variables
	void newgame() 
	{
		
	}

}
