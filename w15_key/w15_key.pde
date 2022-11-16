int[] xvals;
int[] yvals;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
}

void draw() {
  background(0);
  drawLines(xvals, yvals);
}

void mousePressed() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}

void keyPressed() {
  if (key == 'c') {
    setup();
  }
  if (keyCode == UP) {
    moveLines(xvals, yvals, 0, -1);
  }
  else if (keyCode == DOWN) {
    moveLines(xvals, yvals, 0, 1);
  }
  else if (keyCode == LEFT) {
    moveLines(xvals, yvals, -1, 0);
  }
  else if (keyCode == RIGHT) {
    moveLines(xvals, yvals, 1, 0);
  }
  
}

void drawLines(int[] xs, int[] ys) {
  for (int i = 1; i < numPoints; i++) {
    stroke(255);
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}

void moveLines(int[] xs, int[] ys, int xMod, int yMod) {
  if (xMod == 1) {
    for (int i = 0; i < numPoints; i++) {
      xs[i] += xMod;
    }
  }
  else if (xMod == -1) {
    for (int i = 0; i < numPoints; i++) {
      xs[i] += xMod;
    }
  }
  else if (yMod == 1) {
    for (int i = 0; i < numPoints; i++) {
      ys[i] += yMod;
    }
  }
  else if (yMod == -1) {
    for (int i = 0; i < numPoints; i++) {
      ys[i] += yMod;
    }
  }
}
