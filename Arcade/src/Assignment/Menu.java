package Assignment;

import java.awt.Button;

import java.util.ArrayList;

import controlP5.*;

import processing.core.PApplet;

public class Menu extends PApplet
{	
	ControlP5 cp5;
	Button b;
	
	int buttonValue = 0;
	
	String mode = "Menu";
	int a = 0;
	
	//Various array lists to incrmemnt different methods in classes for the draw method
	ArrayList<Object> objects = new ArrayList<Object>();
	ArrayList<Pitch> pitchs = new ArrayList<Pitch>();
	
	//Increment all keys for control use
	boolean[] keys = new boolean[512];
		
	 //Method to move the paddles if pressed the paddle will move
	public void keyPressed()
	{
	  keys[keyCode] = true;
	}

	//Method to move the paddles if released the paddle will stop
	public void keyReleased()
	{
	  keys[keyCode] = false;
	}
	
	public void setup()
	{
		//Set variables for the Player 21 paddle including positions, variables for movement and color
		Player ply = new Player(970, 290);
		objects.add(ply);
		
		//Load pitch methods from the pitch array list
		Pitch pitch = new Pitch(null);
		pitchs.add(pitch);
		  
		//Create the buttons for the menu
		smooth();
		frameRate(30);
		cp5 = new ControlP5(this);
		
		//Name the buttons and set for the menu
		cp5.addButton("Menu",0,0,0,80,19);
		cp5.addButton("Pong",0,250,0,80,19);
		cp5.addButton("Snake",0,500,0,80,19);
		cp5.addButton("Space Invaders",0,750,0,80,19);
	}
	
	public void settings()
	{
		size(1000, 700);
		
	}
	
	public void draw()
	{
		if(mode == "Menu")
		{
			background(35, 227, 23);
			
		    //Load data from the arrray list to increment the abstract methods
		    for(int i = objects.size() - 1; i >= 0; i--)
		    {
		      Object go = objects.get(i);
		      go.position();
		      go.thing();
		    }
		    
		    //Load data from the pitch array list to set the screens
		    for(Pitch pitch: pitchs)
		    {
		      pitch.position();
		      pitch.thing();
		    }
		    
		    //Call the Gamelives method
		    GameLives();
		}
		
		if(mode == "Pong")
		{
			background(0);
		}
		
		if(mode == "Snake")
		{
			background(0);
		}
		
		if(mode == "Space Invaaders")
		{
			background(0);
		}
	}
	
	//Game lives method uses polymorphism to indicate what happens when either player loses all their lives
	void GameLives()
	{
	  //Load all data from objects array list
	  for(int i = objects.size() - 1; i >= 0; i--)
	  {
	    //Name the global variable
	    Object go = objects.get(i);
	    if(go instanceof Ball)
	    {      
	      //If statement to indicate what happens when player 1 loses all their lives
	      if(go.p_lives == 0)
	      {
	        background(0);
	        textAlign(CENTER, CENTER);
	        textSize(50);
	        fill(227, 11, 11);
	        text("Computer Wins, You Lose Chap!!", width / 2, height / 2);
	        text("Press N to restart", width / 2, 400);
	      }
	    }
	      
	  }
	}

	public static void main(String[] args)
	{
		String[] a = {"MAIN"};
		PApplet.runSketch(a, new Menu());
	}
	
	//Method to make sure control P5 works
	public void controlEvent(ControlEvent theEvent)
	{
	  mode = (theEvent.getController().getName());
	}
}
