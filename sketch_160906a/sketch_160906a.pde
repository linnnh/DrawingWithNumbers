float circleSize = 0;

void setup() {
  size(800, 800);
  background(0);
  
  noFill();
  stroke(255, 125, 180, 50);
}

void draw() {
  circleSize = circleSize + 1;
  ellipse(mouseX, mouseY, circleSize, circleSize);
}

void mousePressed() {
  stroke(203, mouseY, 44, 80);
}