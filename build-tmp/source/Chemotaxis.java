import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here
int NUM_BACTERIA = 250;
Bacteria [] colony = new Bacteria[NUM_BACTERIA];

int a, b;

 public void setup()   
 {     
 	background(1);

 	size(500, 500);
 	frameRate(250);
 	//initialize bacteria variables here
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(a, b);
 	} 
 }

 public void draw()   
 {    
 	//move and show the bacteria   
 	background(1);
	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
}

public void mouseClicked()
{
	a = mouseX;
	b = mouseY;
	setup();
}

class Bacteria    
{     
	int xPos, yPos, randFill;
 	//lots of java!
 	Bacteria(int x, int y)
 	{
 		xPos = x;
 		yPos = y;
 	}
 	public void move()
 	{
 		if (xPos < mouseX)
 			xPos += (int)(Math.random()*3)-2;
 		else 
 			xPos += (int)(Math.random()*3)-1;
 		if (yPos < mouseY)
 			yPos += (int)(Math.random()*3)-2;
 		else 
 			yPos += (int)(Math.random()*3)-1;
 	}   
 	public void show()
 	{
 		int randShape = (int)(Math.random()*2);
 		if (randShape == 0)
 		{
	 		randFill = (int)(Math.random()*3);
	 		if (randFill == 0)
	 			fill(27,247, 201);
	 		else if (randFill == 1)
	 			fill(252, 0, 152);
	 		else 
	 			fill(255, 102, 0);
	 		noStroke();
	 		ellipse(xPos, yPos, 5, 5);
	 	}
	 	else
	 	{
	 		noFill();
	 		randFill = (int)(Math.random()*3);
	 		strokeWeight(2);
	 		if (randFill == 0)
	 			stroke(27,247, 201);
	 		else if (randFill == 1)
	 			stroke(252, 0, 152);
	 		else 
	 			stroke(255, 102, 0);
	 		rect(xPos, yPos, 5, 5);
		}
 	}
}    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
