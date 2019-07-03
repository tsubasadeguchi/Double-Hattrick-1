class enemy{
  int xr;//1500
  int yr;//300
  int size = 50;
  int sp;
  enemy(int x0,int y0,int sp0){
    xr = x0;
    yr = y0;
    sp = sp0;
  }
  void write_ell(){
    ellipse(xr,yr,size,size);
  }
  void appear(move_ball m){
    if(m.y < yr+50){
      xr -= sp;
    }
  }
  boolean judge(move_ball m){
    if(dist(m.x,m.y,xr,yr) < (m.b_size/2) + (size/2)){
      return false;
    }
    return true;
  }
}
