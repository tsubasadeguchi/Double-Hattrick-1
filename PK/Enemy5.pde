class Enemy5 {
  int x, y, r=10;
  int dx=2, dy=2;
  Enemy5(int x0, int y0, int dy0) {
    x=x0;
    y=y0;
    dy*=dy0;
  }
  void display() {
    stroke(255, 0, 0);
    fill(0);
    ellipse(x, y, r, r);
  }
  void bound() {
    if (x-r/2<width/4||x+r/2>width/4*3) {
      dx*=-1;
    }
    if (y-r/2<0||y+r/2>height) {
      dy*=-1;
    }
    x+=dx;
    y+=dy;
  }
  void turn() {
    dx*=-1;
    dy*=-1;
  }
  void clash(Ball5 b) {
    if (dist(x, y, b.x, b.y)<=r) {
      flag=1;
    }
  }
}
