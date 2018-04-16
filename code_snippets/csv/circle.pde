class Circle extends Node {
  void display() {
    pushStyle();
    strokeWeight(5);
    stroke(2, 4, 15);
    fill(132, 0, 15);
    ellipse(position.x, position.y, size, size);
    popStyle();
  }
 }
