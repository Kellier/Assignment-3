package assignment;

//Importing various libraries
import processing.core.*;

//H_Snake class for the homescreen which extends the abstract class
public class H_Snake extends Obj 
{
	//Fields
	PApplet papplet;

	//Constructor
	public H_Snake()
	{
		
	}

	@Override
	//Method to set position and movement of the object
	void position() 
	{
		
	}

	@Override
	//Abstract method to draw the object itself
	void thing() 
	{
		//Draw the snake
	    papplet.fill(58, 209, 36);
	    papplet.noStroke();
	    papplet.rect(165, 420, w, w);
	    papplet.rect(165, 431, w, w);
	    papplet.rect(165, 442, w, w);
	    papplet.rect(165, 453, w, w);
	    papplet.rect(165, 464, w, w);
	    papplet.rect(165, 475, w, w);
	    
	    //Draw the food
	    papplet.stroke(250, 30, 10);
	    papplet.fill(250, 30, 10);
	    papplet.rect(foodx, foody, w, w);
	}
	
	//Abstract method to reset the variables
	void newgame()
	{
		
	}

}
