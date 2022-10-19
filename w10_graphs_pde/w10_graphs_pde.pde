//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sin curve
  circRadius = 100;
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);

  angle++;
  if (angle >= 360) {
    spiralRadius -= 10;
  }
}//draw

void drawSinCurve(int degrees, int amplitude, int yOffset) {
  float sinY = yOffset + sin(radians(degrees)) * amplitude;
  circle(degrees, sinY, dotDiameter);
  if (degrees > 600) {
    degrees -= 600;
    sinY = yOffset + sin(radians(degrees - 100)) * amplitude;
    circle(degrees, sinY, dotDiameter);
  }
}

void drawCircle(int degrees, int radius, int xOffset, int yOffset) {
  float rad = radians(degrees);
  xOffset = int(radius * cos(rad));
  yOffset = int(radius * sin(rad));
  if (degrees < 360) {
    circle(width/2 + xOffset, height/2 + yOffset, dotDiameter);
  }
  degrees%=360;
  rad = radians(degrees);
  xOffset = int(radius * cos(rad));
  yOffset = int(radius * sin(rad));
  circle(width/2 + xOffset, 5 * height/6 + yOffset, dotDiameter);
}
