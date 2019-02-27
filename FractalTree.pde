private float fractionLength = .8; 
private int smallestBranch = 10; 
private float branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380,80,-Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	int x1 = x + (int)(branchLength * Math.cos(angle1));
	int x2 = x + (int)(branchLength * Math.cos(angle2));
	int y1 = y + (int)(branchLength * Math.sin(angle1));
	int y2 = y + (int)(branchLength * Math.sin(angle2));
	if (branchLength <= smallestBranch){
		line(x, y, x1, y1);
		line(x, y, x2, y2);
	}
	else{
		line(x, y, x1, y1);
		line(x, y, x2, y2);
		drawBranches(x1, y1, branchLength*fractionLength, angle1);
		drawBranches(x2, y2, branchLength*fractionLength, angle2);
	}
}
