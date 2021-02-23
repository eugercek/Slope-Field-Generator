class Cartesian{
  Cartesian(){
    drawAxis();
  }
  
  private void drawAxis(){
    pushMatrix();
    
    stroke(0);
    // X axis
    line(0,height/2,width,height/2);
    
    line(width/2, 0, width/2, height);
    
    popMatrix();
  }
 
}
