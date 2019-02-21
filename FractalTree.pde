private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
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
	//drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(float x,float y, float branchLength, float angle) 
{   
	if (branchLength <= smallestBranch)
		line(x, y, branchLength*Math.cos(angle), branchLength*Math.sin(angle));
	else if (branchLength == 50){
		line(x, y, x, y + branchLength);
		drawBranches(x, y + branchLength, branchLength*Math.cos(angle), branchLength*Math.sin(angle));
		drawBranches(x, y + branchLength, branchLength*Math.cos(-1*angle), branchLength*Math.sin(-1*angle));
	}
	else
		line(x, y, branchLength*Math.cos(angle), branchLength*Math.sin(angle));
		line(x, y, branchLength*Math.cos(-1*angle), branchLength*Math.sin(-1*angle));
		drawBranches(x, y + branchLength, branchLength*Math.cos(angle), branchLength*Math.sin(angle));
		drawBranches(x, y + branchLength, branchLength*Math.cos(-1*angle), branchLength*Math.sin(-1*angle));
}
