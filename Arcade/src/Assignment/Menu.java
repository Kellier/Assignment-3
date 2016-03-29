package assignment;

import java.awt.Button;

import java.util.ArrayList;
import java.util.Random;

import controlP5.*;

import processing.core.PApplet;
import processing.core.PFont;

public class Menu extends PApplet
{	
	ControlP5 cp5;
	Button b;
	
	int buttonValue = 0;
	
	String mode = "Menu";
	int a = 0;
	
	//Various array lists to increment different methods in classes for the draw method
	ArrayList<Obj> objs = new ArrayList<Obj>();
	
	PFont myFont;
	
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
		Random r = new Random();
		int x1 = r.nextInt(300 - 10) + 10;
		int y1 = r.nextInt(650 - 300) + 300;  
		
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
		
		H_Snake snake = new H_Snake(null, x1, y1);
		objs.add(snake);
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
			
		    myFont = loadFont("Arcade1.vlw");
		    
		    stroke(255);
		    fill(255);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Arcade", 500, 90);
		    
		    stroke(255, 0, 0);
		    fill(255, 0, 0);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Snake", 167, 240);
		    
		    stroke(245, 250, 20);
		    fill(245, 250, 20);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(90);
		    text("Pong", 500, 240);
		    
		    stroke(40, 232, 23);
		    fill(40, 232, 23);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(45);
		    text("Space", 833, 220);
		    
		    stroke(40, 232, 23);
		    fill(40, 232, 23);
		    textFont(myFont);
		    textAlign(CENTER, CENTER);
		    textSize(45);
		    text("Invaders", 833, 270);
		    
		    stroke(255);
		    line(0, 200, 1000, 200);
		    line(333, 200, 333, 700);
		    line(666, 200, 666, 700);
		    line(0, 295, 1000, 295);
		    
		    for(int i = objs.size() - 1; i >= 0; i--)
		    {
		      Obj go = objs.get(i);
		      go.position();
		      go.thing();
		    }
		    
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
