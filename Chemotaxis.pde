 //declare bacteria variables here
 	Bacteria [] colony = new Bacteria[3];

 void setup()   
 {     
 	size(500, 500);
 	//initialize bacteria variables here
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria(250, 250);
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
 }    