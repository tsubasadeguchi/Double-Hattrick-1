class Wall{
  int wxs[] = {width/2-50,width/2,width/2+50};
  int wx;
  int wy = height/2;
  
  
  Wall{
    wx = wxs[int(random(3)%3)];
  }
  
  
  displayWall(){
    rect(wx,wy,50,100);
  }
  
}
    
