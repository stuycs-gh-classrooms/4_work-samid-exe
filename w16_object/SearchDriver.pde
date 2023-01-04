class Ball {

  int cx, cy;
  int xvelocity, yvelocity;
  int radius;

  //constructor
  Ball() {
    radius = 20;
    reset();
  }//default constructor

  void reset() {
    xvelocity = 0;
    yvelocity = 0;
    cx = int(random(radius, width-radius));
    cy = int(random(radius, height-radius));
  }//resetBall

  void display() {
    circle(cx, cy, radius * 2);
  }//display
class Block {

  int cx, cy;
  int sideLength;
  color inside;

  Block(int x, int y, int sl) {
    sideLength = sl;
    inside = color(255);
    cx = x;
    cy = y;
  }//default constructor

  void display() {
    fill(inside);
    square(cx, cy, sideLength);

    fill(0);
    if (sideLength >= 100) {
      textSize(80);
    }
    else {
      textSize(sideLength);
    }
    textAlign(LEFT, TOP);
    text(sideLength, cx, cy);
  }//display

}//Ball
  void move() {
    if (cx <= radius || cx >= (width - 1 - radius)) {
      xvelocity*= -1;
    }//x bounce
    if (cy <= radius || cy >= (height - 1 - radius)) {
      yvelocity*= -1;
    }//x bounce
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall
  
  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed

  boolean onBall(int x, int y) {
    float d = dist(x, y, cx, cy);
    return d <= radius;
  }//onBall
  
  int getScoreValue() {
    int score = abs(xvelocity) + abs(yvelocity); 
    return score;
  }//getScoreValue
  
}//Ball
