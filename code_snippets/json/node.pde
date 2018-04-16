int i, j;
int aux;
class Node {

  PVector position;
  float size;
  int state;


  Node() {
    while (state==0) {
      if (puntos[i][j]==1) {
        setPosition(new PVector(i*50+50, j*50+50));
        state=1;
        
      }
      if (i>=8&&j>=8) {
        i=8;
        j=8;
        state=1;
      } else if (j<8) {
        j++;
      } else {
        i++;
        j=0;
      }
    }
    println(i, j);
    setSize(25);
    if (i==8&&j==8) {
      i=8;
      j=8;
    } else if (j<8) {
      j++;
    } else {
      i++;
      j=0;
    }
  }


  void setPosition(PVector pos) {
    position = pos;
  }

  void setSize(float s) {
    size = s;
  }


  PVector position() {
    return position;
  }

  float size() {
    return size;
  }
}
