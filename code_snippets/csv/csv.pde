Circle[] circles;
Rectangle[] rectangles;

Table puntos;
Table lineas;
Table contador;

void setup() {
  size(500, 500);
  puntos=loadTable ("puntos.csv");
  contador=loadTable ("puntos.csv");
  lineas=loadTable ("lineas.csv");

  circles = new Circle[6];
  for (int i = 0; i < circles.length; i++)
    circles[i] = new Circle();
  rectangles = new Rectangle[6];
  for (int i = 0; i < rectangles.length; i++)
    rectangles[i] = new Rectangle();
}

void draw() {
  background(229, 218, 218);
  
  for (int i = 0; i <6; i++) {
    rectangles[i].display();
    circles[i].display();
  }

 
  saveTable(contador, "new.csv");
}
