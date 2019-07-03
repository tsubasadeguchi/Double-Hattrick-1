class GK {
  int zx, zy, zvx;
  int[] eyes = {16, 16};

  //positon,speed,hp
  GK(int x, int y, int vx) {
    zx = x;
    zy = y;
    zvx = vx;
  }


  void gkMove(int limitL, int limitR) {
    if (zx-20+zvx <= limitL || zx+20+zvx >= limitR) {
      zvx *= -1;
    }

    zx += zvx;
  }


  void gkDisplay() {
    // Draw Zoog's body
    fill(250,0,0);
    rect(zx-10, zy-50, 20, 100);
    // Draw Zoog's head
    fill(255);
    ellipse(zx, zy-30, 60, 60);
    // Draw Zoog's eyes
    fill(0);
    ellipse(zx-19, zy-30, eyes[0], eyes[0]*2);
    ellipse(zx+19, zy-30, eyes[1], eyes[1]*2);
    // Draw Zoog's legs
    stroke(0);
    line(zx-10, zy+50, zx-20, zy+60);
    line(zx+10, zy+50, zx+20, zy+60);
    // Draw Zoog's hand
    line(zx-10, zy+10, zx-30, zy+0);
    line(zx+10, zy+10, zx+30, zy+0);
  }
  

  boolean pkStop(int ballx, int bally, int ballsize) {
    if (bally+ballsize*3/4 > zy-60 && bally+ballsize/4 < zy+40) {
      if (ballx+ballsize*3/4 > zx-10 && ballx+ballsize/4 < zx +10) {
        return true;
      }
    }
    return false;
  }
}
