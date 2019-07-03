class Goal {
  int gl = width/2 - width*2/10;
  int gw = width/150;
  int gh = height/4;
  int gx = width/4 + width*1/10;
  int gy = height/20;


  void displayGoal() {
    fill(100, 220, 0);
    stroke(255);
    strokeWeight(gw/4);
    bezier (int(gx+gw), int(gy+gw), int(gx+gl/3), int(gy+gh/4), int(gx+gl*2/3), int(gy+gh/4), int(gx+gl-gw), int(gy+gw));
    stroke(200);
    for (int i=0; int(gy+gh*3/4-i*5) > int(gy); i++) {
      line(int(gx+1), int(gy+gh*3/4-i*5), int(gx+gl-3), int(gy+gh*3/4-i*5));
    }
    for (int i=1; int(gx+i*5) < int(gx+gl); i++) {
      line(int(gx+i*5), int(gy+gh*3/4), int(gx+i*5), int(gy+3));
    }

    for (int i=1; int(gy+gh-i*5) > int(gy+gh*3/4); i++) {
      line(int(gx+1), int(gy+gh-i*5), int(gx+4*i), int(gy+gh-i*5));
      line(int(gx+gl-3), int(gy+gh-i*5), int(gx+gl-4*i), int(gy+gh-i*5));
    }
    float a2 = int((gl/4) / ((gl/11)));
    for (int i=1; int(gx+i*5) < int(gx+gl/11); i++) {
      line(int(gx+i*5), int(gy+gh*3/4), int(gx+i*5), int(gy+gh-i*6));
      line(int(gx+gl-gl/10+i*5), int(gy+gh*3/4), int(gx+gl-gl/10+i*5), int(gy+gh*3/4+i*6));
    }

    stroke(255);  
    strokeWeight(gw/2);
    line(width/4, gy+gh-3, width*3/4, gy+gh-3);
    //yoko5
    line(int(gx+gw*1/2), int(gy+gh*49/50), int(gx+gl/10), int(gy+gh*3/4));
    //yoko6
    line(int(gx+gl-gw*1/2), int(gy+gh*49/50), int(gx+gl-gl/10), int(gy+gh*3/4));
    //tate2
    line(int(gx+gl/10), int(gy+gh*3/4), int(gx+gl/11), int(gy+gh/9));
    //tate3
    line(int(gx+gl-gl/10), int(gy+gh*3/4), int(gx+gl-gl/11), int(gy+gh/9));
    //yoko2
    line(int(gx+gl/11), int(gy+gh/9), int(gx+5), int(gy+5));
    //yoko3
    line(int(gx+gl-gl/11), int(gy+gh/9), int(gx+gl-5), int(gy+5));
    //yoko4
    line(int(gx+gl/10), int(gy+gh*3/4), int(gx+gl-gl/10), int(gy+gh*3/4));
    fill(255);
    noStroke();
    //yoko1
    rect(gx, gy, gw, gh);
    //tate1
    rect(gx, gy, gl, gw);
    //tate4
    rect(gx+gl-gw, gy, gw, gh);
  }

  boolean clear(int bally) {
    if (bally < gy+gh/4) {
      return true;
    }
    return false;
  }
}
