int[] xvals;
int[] yvals;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;

  drawLines(xvals, yvals);
}

void draw() {
  drawLines(xvals, yvals);
}

void mousePressed() {
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  numPoints++;
}

void drawLines(int[] xs, int[] ys) {
  for (int i = 1; i < numPoints; i++) {
    stroke(255);
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}
