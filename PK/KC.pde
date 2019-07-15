class KC {
  int kx, ky, size;

  KC(int x, int y, int s) {
    kx = x+(50/3)-(s/3);
    ky = y+(50*3+50/3)-(s*3+s/3);
    size = s;
  }

  void kcDisplay() {
    // Draw Zoog's body
    fill(0, 0, 255);
    rect(kx-size/3, ky+size-10, size*2/3, size*2);
    // Draw Zoog's head
    fill(255);
    ellipse(kx, ky, size*2, size*2);
    // Draw Zoog's legs
    stroke(0);
    line(kx-size/4, ky+size*3-10, kx-size/3, ky+size*3+size/3);
    line(kx+size/4, ky+size*3-10, kx+size/3, ky+size*3+size/3);
    // Draw Zoog's hand
    line(kx-size/3, ky+size+size/3, kx-size, ky+size+size*2/3);
    line(kx+size/3, ky+size+size/3, kx+size, ky+size+size*2/3);
  }


  void kcMove() {
    for (int i=0; i < 100; i++) {
      kx += 1;
      ky -= 1;
      kcDisplay();
    }
  }
}
