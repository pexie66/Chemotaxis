bubble [] one = new bubble [180];

void setup()
{
  size (600, 600);
  for (int i = 0; i < one.length; i++)
  {
    one[i] = new bubble();
  }
}

void draw()
{
  background(29, 102, 178);
  for (int i = 0; i < one.length; i++)
  {
    one[i].show();
    one[i].move();
  }
  fish();
}

class bubble
{
  int myX, myY, mySize, color1, color2, color3;
  bubble ()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    mySize = (int)(Math.random()*21)+10;
    color1 = (int)(Math.random()*256);
    color2 = (int)(Math.random()*256);
    color3 = (int)(Math.random()*256);
  }

  void show()
  {
    stroke(255);
    fill(29, 102, 178);
    ellipse(myX, myY, mySize, mySize);
  }

  void move()
  {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
    

    if (dist(myX, myY, mouseX, mouseY) < 130)
    {
      fill(color1, color2, color3);
      ellipse (myX, myY, mySize, mySize);
    }
  }
}

void fish()
{
  fill(0, 0, 0);
  ellipse(mouseX, mouseY, 8, 8);
  noStroke();
  //tail
  fill(250, 107, 40);
  triangle(mouseX-35, mouseY, mouseX-60, mouseY+25, mouseX-60, mouseY-25);
  //body
  ellipse(mouseX, mouseY, 100, 40);
  //eyes
  fill(0);
  ellipse(mouseX+30, mouseY, 8, 8);
}