class Ball {
  int dir_x = 0;
  int dir_y = 0;
  int ballsize = 70;
  int x = width/2-ballsize/2;
  int y = height * 4/5;
  PImage img;

  void display() {
    img = loadImage( "117.png" );
    img.resize(ballsize, ballsize);
    image( img, x, y );
  }

  void ballMove() {
    x += dir_x;
    y += dir_y;
  }

  void up(int vy) {
    dir_y = -vy;
  }
  void down(int vy) {
    dir_y = vy;
  }
  void left(int vy,int vx) {
    dir_y = -vy;
    dir_x = -vx;
  }
  void right(int vy,int vx) {
    dir_y = -vy;
    dir_x = vx;
  }
}
