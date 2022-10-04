int movingX;
int movingY;
int radius;

void circleRow(int startX, int endX, int y, int d) {
  int rowX = startX;
  int rowY = y;
  while (rowX < endX) {
    circle(rowX, rowY , d);
    rowX += d; 
  }
}

void setup() {
  size(500,500);
  movingX = 50;
  movingY = 150;
  radius = 50;
  fill(0, 255, 200);
}

void draw() {
  background(255);
  circleRow(50, 500, 50, radius * 2);
  circle(movingX, movingY, radius * 2);
  movingX += 5;
  if ((movingY + radius == 500) && (movingX + radius == 500)) {
    movingX = 50;
    movingY = 150;
  }
  if (movingX + radius == 500) {
    movingX = 50;
    movingY += radius * 2; 
  }
}
