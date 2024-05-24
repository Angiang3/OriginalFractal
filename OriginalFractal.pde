void setup() {
  size(800, 800);
  background(0, 0, 0);
}

void draw() {
  background(0); // To clear the previous frame
  drawCircles(width / 2, height / 2, width);
}

void drawCircles(int x, int y, int rad) {
  noFill();
  if (rad > 20) {
    drawCircles(x, y - rad / 2, rad / 2);
    drawCircles(x + 2 * rad / 3, y + rad / 3, rad / 2);
    drawCircles(x - 2 * rad / 3, y + rad / 3, rad / 2);
    stroke((float) Math.random() * 255, (float) Math.random() * 255, (float) Math.random() * 255);
  }
  ellipse(x, y, rad, rad);
}

void keyPressed() {
  // Implement reverse and forward with pattern using arrows
}
