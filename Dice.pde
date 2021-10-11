Dice bob;

void setup(){
  noLoop();
  size(470, 500);
}

void draw(){
  int sum = 0;
  background(255);
   for (int y = 5; y <= 450; y = y + 60){
     for (int x = 5; x <= 450; x = x + 60){
       Dice bob = new Dice(x, y);
       bob.roll();
       sum = sum + bob.dots;
       bob.show();
     }
  }
  System.out.println(sum);
  textSize(25);
  fill(0);
  text("Total: "+sum, 185, 490);
}

void mousePressed()
{
  redraw();
}

class Dice
{
  int mySize, myX, myY;
  //int myR, myB, myG;
  int dots;
  Dice (int x, int y)
  {
    mySize = 0;
    myX = x;
    myY = y;
    //myR = (int)(Math.random()*255);
    //myB = (int)(Math.random()*255);
    //myG = (int)(Math.random()*255);
  }
  void roll()
  {
    dots = (int)(Math.random() * 6) + 1;
  }
  void show()
  {
    //fill(myR, myB, myG);
    //rect(myX, myY, 40, 40);
    //fill(0);
    //ellipse(myX, myY, mySize, mySize);
    if (dots == 1){
      fill(255, 154, 162);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX + 20, myY + 20, 10, 10);
    } else if (dots == 2){
      fill(255, 183, 178);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
    } else if (dots == 3){
      fill(255, 218, 193);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 20, myY + 20, 10, 10);
    } else if (dots == 4){
      fill(226, 240, 203);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 30, 10, 10);
    } else if (dots == 5){
      fill(181, 234, 215);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 30, 10, 10);
      ellipse(myX + 20, myY + 20, 10, 10);
    } else{
      fill(199, 206, 234);
      rect(myX, myY, 40, 40);
      fill(0);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 30, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 30, 10, 10);
      ellipse(myX + 30, myY + 20, 10, 10);
      ellipse(myX + 10, myY + 20, 10, 10); 
    } 
  }
}





