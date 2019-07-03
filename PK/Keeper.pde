class Keeper {
  int x=width/2;
  int y=20;
  int r=20;
  int dx=3;
  void display() {
    fill(0);
    ellipse(x, y, r, r);
  }
  void bound() {
    if (x<width/16*7||x>width/16*9) {
      dx*=-1;
    }
    x+=dx;
  }
  void clash(Ball5 b) {
    if (dist(x, y, b.x, b.y)<=r) {
      flag=1;
    }
  }
}
