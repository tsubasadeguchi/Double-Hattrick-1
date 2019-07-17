class Ground {
  int x1=0;
  int x2=width/4*3;
  int y=0;
  int w=width/4;
  int h=height;
  void black() {
    rectMode(CORNER);
    noStroke();
    fill(0);
    rect(x1, y, w, h);
    rect(x2, y, w, h);
  }
  void lines() {
    stroke(255);
    strokeWeight(5);
    line(x1, height/2, x2, height/2);
  }
  void circle() {
    noFill();
    stroke(255);
    ellipse(width/2, height/2, width/8, width/8);
  }
  void pArea(int pay) {
    rectMode(CENTER);
    fill(10, 150, 0);
    stroke(255);
    rect(width/2, pay, width/4, 100);
  }
  void pArc(int ay) {
    noFill();
    stroke(255);
    ellipse(width/2, ay, 100, 100);
  }
