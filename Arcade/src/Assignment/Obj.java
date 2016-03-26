package Assignment;

import java.awt.Color;

import processing.core.*;

public abstract class Obj 
{
	PApplet papplet;
	PVector pos;
	PVector move;
	float wallx, wally;
	float foodx, foody;
	float enemyx, enemyy;
	float speedx, speedy;
	float w, h;
	Color c;

	public Obj(PApplet papplet, float x, float y) 
	{
		this.papplet = papplet;
		pos = new PVector(x, y);
		move = new PVector(0, -1);
	    this.w = 10;
	    this.h = 100;
	    this.speedx = 8;
	    this.speedy = 8;
	    this.wallx = 350;
	    this.wally = 450;
	    this.foodx = papplet.random(0, 330);
	    this.foody = papplet.random(200, 700);
	    this.enemyx = 0;
	    this.enemyy = 0; 
	}
	
	abstract void position();
	abstract void thing();

	public static void main(String[] args) 
	{
		String[] a = {"MAIN"};
		PApplet.runSketch(a, new Menu());

	}

}
