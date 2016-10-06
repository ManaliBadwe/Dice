void setup()
{
  size(400,450);
  noLoop();
}
void draw()
{
  int num = 0;
  for(int i = 1; i <= 400; i+=50)
    {
      for(int j = 1; j <=400; j+=50)
      {
        Die dice = new Die(i,j);
        dice.show();
        num = num += dice.dieRoll;
 
      }
    }
    fill(255);
    rect(0, 400,400,50);
    fill(0);
    textSize(26);
    text("Your total is: " + num, 15, 445);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY, dieRoll;
  
  Die(int x, int y) 
  {
    myX = x;
    myY = y;

    dieRoll = (int)(Math.random()*6)+1;
  
  }
 
  void show()
  {
    fill(255);
    rect(myX,myY,50,50);
    
{
 if(dieRoll == 1)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 10,10);
    }
    else if(dieRoll == 2)
    {
      fill(0);
      ellipse(myX + 15, myY + 15, 10,10);
      ellipse(myX + 35, myY + 35, 10,10);
    }
    else if(dieRoll == 3)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 10,10);
      ellipse(myX + 15, myY + 15, 10,10);
      ellipse(myX + 35, myY + 35, 10,10);
    }
    else if(dieRoll == 4)
    {
      fill(0);
      ellipse(myX + 15, myY + 15, 10,10);
      ellipse(myX + 35, myY + 15, 10,10);
      ellipse(myX + 15, myY + 35, 10,10);
      ellipse(myX + 35, myY + 35, 10,10);
    }
    else if(dieRoll == 5)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 10,10);
      ellipse(myX + 15, myY + 15, 10,10);
      ellipse(myX + 35, myY + 15, 10,10);
      ellipse(myX + 15, myY + 35, 10,10);
      ellipse(myX + 35, myY + 35, 10,10);
    }
    else if(dieRoll == 6)
    {
      fill(0);
      ellipse(myX + 10, myY + 15, 10,10);
      ellipse(myX + 40, myY + 15, 10,10);
      ellipse(myX + 10, myY + 30, 10,10);
      ellipse(myX + 40, myY + 30, 10,10);
      ellipse(myX + 10, myY + 45, 10,10);
      ellipse(myX + 40, myY + 45, 10,10);
    }
    
    
}
    
  }
}
