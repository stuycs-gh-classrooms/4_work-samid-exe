void setup() {
  size(400, 400);
  background(255);
  logo(100, 100);
  logo(300, 100);
  logo(300, 300);
  logo(100, 300);
}


void logo(int x, int y) {
  fill(150, 100, 0);
  circle(x - 20, y - 20, 25);
  circle(x + 20, y - 20, 25);
  fill(240, 220, 190);
  circle(x - 20, y - 20, 20);
  circle(x + 20, y - 20, 20);
  fill(150, 100, 0);
  circle(x, y, 50);
  fill(0);
  circle(x + 10, y, 5);
  circle(x - 10, y, 5);
  fill(240, 220, 190);
  circle(x, y + 12.5, 20);
  fill(0);
  circle(x, y + 10, 5);
  noFill();
  arc(x - 4, y + 12.5, 7.5, 7.5, 0, PI);
  arc(x + 4, y + 12.5, 7.5, 7.5, 0, PI);
}
