class Side{
  int x1 = 0;
  int x2 = width/4*3;
  int y = 0;
  int w = width/4;
  int h = height;
  void black(){
    fill(0);
    rect(x1,y,w,h);
    rect(x2,y,w,h);
  }
}
