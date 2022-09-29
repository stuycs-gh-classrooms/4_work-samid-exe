void setup() {
  background(0);
  size(500, 500);
  drawLightning(int(random(0, 100)), 0, 50);
  drawLightning(int(random(100, 200)), 0, 50);
  drawLightning(int(random(200, 300)), 0, 50);
  drawLightning(int(random(300, 400)), 0, 50);
  drawLightning(int(random(400, 500)), 0, 50);
  fill(150);
  noStroke();
}

void drawLightning(int x, int y, int numParts) {
  stroke(random(0, 250), random(0, 250), random(0, 250));
  strokeWeight(10);
  while (y <= 500) {
    int nextx = int(random(x - 5, x + 5));
    int nexty = y + height/numParts;
    line(x, y, nextx, nexty);
    y = nexty;
    x = nextx;
  }
}
