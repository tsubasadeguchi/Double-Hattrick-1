class Ball5 {
  Ground g;
  int x=width/2;
  int y=height-10;
  int r=10;
  int dx=3, dy=3;
  boolean judge=false;
  void display() {
    noStroke();
    fill(0, 0, 255);
    ellipse(x, y, r, r);
  }
  void move() {
    if (key==CODED) {
      if (keyCode==UP) {
        y-=dy;
      }
      if (keyCode==DOWN) {
        y+=dy;
      }
      if (keyCode==RIGHT) {
        x+=dx;
      }
      if (keyCode==LEFT) {
        x-=dx;
      }
    }
  }
  void gameClear() {
    if (y-r<0&&(x>width/16*7&&x<width/16*9)) {
      goal=1;
    }
  }
}
