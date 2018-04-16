class Rectangle extends Node {
  void display() {
    pushStyle();
    rectMode(CENTER);
    strokeWeight(5);
    stroke(2, 4, 15);
    fill(229, 149, 0);
    rect(position.x, position.y, size, size);
    popStyle();
  }
}
