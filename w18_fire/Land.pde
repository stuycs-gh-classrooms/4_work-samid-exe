class Land {
  // instance variables:
  int state;
  int nextState;
  int landSize;
  int cx, cy;

  // methods:
  
  Land() {
    state = int(random(3));
    landSize = width/tractLength;
  }
  
  Land(int x, int y, int size, int type) {
    cx = x;
    cy = y;
    landSize = size;
    state = type;
  }
  
  void display() {
    if (state == 0) {
      fill(DIRT_COLOR);
    }
    if (state == 1) {
      fill(FIRE_COLOR);
    }
    if (state == 2) {
      fill(BURNT_COLOR);
    }
    if (state == 3) {
      fill(GRASS_COLOR);
    }
    square(cx, cy, landSize);
  }
  
  void changeState() {
    display();
  }

  void updateNextState(int leftState) {
    if ((leftState == 0 && state == FIRE) || (leftState == 2 && state == FIRE)) {
      state = BURNT;
    }
    if (leftState == 2 && state == GRASS) {
      state = FIRE;
    }
  }
}
