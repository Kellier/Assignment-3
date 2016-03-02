/**
 * 
 */
package Assignment;

import java.awt.Button;

import java.util.ResourceBundle.Control;

import controlP5.*;

import processing.core.PApplet;

public class Menu extends PApplet
{	
	ControlP5 cp5;
	Button b;
	
	int buttonValue = 0;
	
	String mode = "Menu";
	int a = 0;
	
	public void setup()
	{
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
		background(0);
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
