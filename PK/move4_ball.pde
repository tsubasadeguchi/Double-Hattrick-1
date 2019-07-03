class move_ball{
  int b_size=25;
  int x = width/2;
  int y = height-b_size/2;
  int dx=15;
  int dy=15;
  void write(){
    fill(255);
    ellipse(x,y,b_size,b_size);
  }
  
  void move(){
    if(key==CODED){
      if(keyCode==UP){
        y-=dy;
      }
      if(keyCode==DOWN){
        y+=dy;
      }
      if(keyCode==RIGHT){
        x+=dx;
      }
      if(keyCode==LEFT){
        x-=dx;
      }
    }
  }
}
