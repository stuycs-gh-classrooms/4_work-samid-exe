int[] xvals;
int[] yvals;
int numPoints;

void setup() {
  size(600, 400);
  background(0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;

  makeLines(xvals, yvals, 10);
  drawLines(xvals, yvals);
}

void makeLines(int[] xs, int[] ys, int points) {
  for (int i = 0; i < points && i < xs.length && i < ys.length; i++) {
    xs[i] = int(random(width));
    ys[i] = int(random(height));
    numPoints++;
  }
}

void drawLines(int[] xs, int[] ys) {
  for (int i = 1; i < numPoints; i++) {
    stroke(255);
    line(xs[i-1], ys[i-1], xs[i], ys[i]);
  }
}
