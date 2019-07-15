Goal gl;
backGround bg;
Side sd;
Ball bl;
GK gk;
KC kc;

void setup() {
  size(1300, 700);
  bg = new backGround();
  sd = new Side();
  bl = new Ball();
  gl = new Goal();
  gk = new GK(gl.gx+gl.gl/2, gl.gy+gl.gh*2/3, 12);
  kc = new KC(width*2/5, height*4/5, 50);
}



void draw() {
 
  bg.field();
  gl.displayGoal();
  sd.black();
  kc.kcDisplay();

  if (gl.clear(bl.y) != true) {
    if (gk.pkStop(bl.x, bl.y, bl.ballsize) != true) {
      gk.gkDisplay();
      bl.display();
      bl.ballMove();
      kc.kcDisplay();
      gk.gkMove(gl.gx, gl.gx+gl.gl);
    } else {
      gk.gkDisplay();
      bl.display();
      kc.kcDisplay();
      print("stop");
      noLoop();
    }
  } else {
    bl.display();
    gk.gkDisplay();
    kc.kcDisplay();
  }

  
}


void keyPressed() {
  if (key == CODED) {
    if (bl.dir_x == 0  && bl.dir_y == 0) {
      kc.kcMove();
      if (keyCode == UP) {  
        bl.up(12);
      } else if (keyCode == DOWN) {
        bl.down(8);
      } else if (keyCode == LEFT) {
        bl.left(10,3);
      } else if (keyCode == RIGHT ) {
        bl.right(10,3);
      }
    }
  }
}
