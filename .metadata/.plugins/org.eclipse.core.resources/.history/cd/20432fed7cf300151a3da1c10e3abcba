package Assignment;

import java.awt.Button;

//import java.util.ArrayList;

import controlP5.*;

import processing.core.PApplet;

public class Menu extends PApplet
{	
	ControlP5 cp5;
	Button b;
	
	int buttonValue = 0;
	
	String mode = "Menu";
	int a = 0;
	
	//Various array lists to increment different methods in classes for the draw method

	
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
		  
		//Create the buttons for the menu
		smooth();
		frameRate(30);
		cp5 = new ControlP5(this);
		
		//Name the buttons and set for the menu
		cp5.addButton("Menu",0,0,0,80,19);
		cp5.addButton("Instructions",0,200,0,80,19);
		cp5.addButton("Pong",0,400,0,80,19);
		cp5.addButton("Snake",0,600,0,80,19);
		cp5.addButton("Space Invaders",0,800,0,80,19);
	}
	
	public void settings()
	{
		size(1000, 700);	
	}
	
	public void draw()
	{
		if(mode == "Menu")
		{
			background(0);
		}
		
		if(mode == "Instructions")
		{
			background(0);
		}
		
		if(mode == "Pong")
		{
			background(0);
		}
		
		if(mode == "Snake")
		{
			background(0);
		}
		
		if(mode == "Space Invaders")
		{
			background(0);
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
