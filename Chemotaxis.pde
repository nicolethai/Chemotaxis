 //declare bacteria variables here
int NUM_BACTERIA = 100;
Bacteria [] colony = new Bacteria[NUM_BACTERIA];

 void setup()   
 {     
 	size(500, 500);
 	frameRate(100);
 	//initialize bacteria variables here
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500)); // 250, 250
 	} 
 }

 void draw()   
 {    
 	//move and show the bacteria   
 	background(1);
	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}
 	fill(255);
 	noStroke();
 	ellipse(mouseX, mouseY, 10, 10);   
}

void mouseMoved()
{
	for (int i = 0; i < colony.length; i++)
	{
		if (colony[i].xPos < mouseX)
			colony[i].xPos += mouseX - xPos;
		else 
			colony[i].xPos -= mouseX - xPos;
	}
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
 	void move()
 	{
 		xPos += (int)(Math.random()*3)-1;
 		yPos += (int)(Math.random()*3)-1;
 	}   
 	void show()
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
	 		// fill(255);
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