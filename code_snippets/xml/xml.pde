Circle[] circles;
Rectangle[] rectangles;

XML xml;
int recol[];
int puntos[][]=new int[9][9];
String punto;
int aux1;

void setup() {
  size(500, 500);

  xml = loadXML("puntos.xml");
  XML[] children = xml.getChildren("puntos");

  for (int i = 0; i < children.length; i++) {
    String name = children[i].getContent();
    punto=name;
  }

  recol = int(split(punto, ','));

  for (int i=0; i<9; i++) {
    for (int j=0; j<9; j++) {
      puntos[j][i]=recol[aux1];
      println (j, i, puntos[j][i],recol[aux1],aux1);
      aux1=aux1+1;
     
    }
  }
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
}
