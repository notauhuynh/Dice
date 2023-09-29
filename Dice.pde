
int dieNum, sum;
void setup()
{
  background((int)(Math.random()* 120) +120, (int)(Math.random()* 120) +120, (int)(Math.random()* 120) +120, 0.8);  
  size(500, 500);
  textAlign(CENTER, CENTER);
  noLoop();
  fill(0);
 

}
void draw()
{
     background((int)(Math.random()* 60) +180, (int)(Math.random()* 60) +180, (int)(Math.random()* 60) +180, 0.8);  
  int xPos, yPos;
  for (yPos = 25; yPos < 400; yPos = yPos + 110) {
    for (xPos = 25; xPos < 400; xPos = xPos + 110) {
      Die test = new Die(xPos, yPos);
      test.roll();
      test.show();
      // System.out.println(sum );
      sum = sum+dieNum;
       
    }
  }
  fill(0);
  text("Total sum is: ", 250, 460);
  text(sum, 250, 485);

}
void mousePressed()
{

  redraw();
  sum = 0;
  //System.out.println("");
}
class Die //models one single dice cube
{
  int sum, myX, myY;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    dieNum = (int)(Math.random()*6)+1; 
    //dieNum = 6;
 
    
    

  }
  void show()
  {


    fill(255);
    if (dieNum == 1) {
      rect(myX, myY, 90, 90);
      fill(#FFA595);
      ellipse(myX + 45, myY + 45, 20, 20);
    }
    if (dieNum == 2) {
      rect(myX, myY, 90, 90);
      fill(#FFEE95);
      ellipse(myX + 15, myY + 15, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
    }
    if (dieNum == 3) {
      rect(myX, myY, 90, 90);
      fill(#ACFF95);
      ellipse(myX + 15, myY + 15, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
      ellipse(myX + 45, myY + 45, 20, 20);
    }
    if (dieNum == 4) {
      rect(myX, myY, 90, 90);
      fill(#95FFF5);
      ellipse(myX + 15, myY + 15, 20, 20);
      ellipse(myX + 75, myY + 15, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
      ellipse(myX + 15, myY + 75, 20, 20);
    }
    if (dieNum == 5) {
      rect(myX, myY, 90, 90);
      fill(#CA95FF);
      ellipse(myX + 15, myY + 15, 20, 20);
      ellipse(myX + 75, myY + 15, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
      ellipse(myX + 15, myY + 75, 20, 20);
      ellipse(myX + 45, myY + 45, 20, 20);
    }
    if (dieNum == 6) {
      rect(myX, myY, 90, 90);
      fill(#FF95F1);
      ellipse(myX + 15, myY + 15, 20, 20);
      ellipse(myX + 15, myY + 45, 20, 20);
      ellipse(myX + 15, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 75, 20, 20);
      ellipse(myX + 75, myY + 45, 20, 20);
      ellipse(myX + 75, myY + 15, 20, 20);
    }

  }
}
Die test = new Die(50, 150);
