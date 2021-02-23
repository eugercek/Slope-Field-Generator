class Cartesian {
  Cartesian() {
    drawAxises();
    drawAxisDelimiters();
    writeAxisNumbers();
  }

  private void drawAxises() {
    pushMatrix();

    stroke(0);

    strokeWeight(2);
    // X axis
    line(0, height/2, width, height/2);

    // Y axis
    line(width/2, 0, width/2, height);

    popMatrix();
  }

  private void drawAxisDelimiters() {
    pushMatrix();


    int smaller = width > height ? height : width;


    float stepLength = smaller / Constants.totalStep;

    // X Axis

    for (int i = 0; i < Constants.totalStep * 2; i++)
      line(i * stepLength, height/2 + 5, i * stepLength, height/2 - 5);


    // Y Axis

    for (int i = 0; i < Constants.totalStep * 2; i++)
      line(width/2 + 5, i * stepLength, width /2 -5, i* stepLength);


    popMatrix();
  }

  private void writeAxisNumbers() {
    pushMatrix();

    fill(255, 0, 0);
    textAlign(CENTER);

    int smaller = width > height ? height : width;


    float stepLength = smaller / Constants.totalStep;

    // X Axis


    for (int i = 0; i < Constants.totalStep; i++)
      text(nfs(i * Constants.delta, 1, 1), i * stepLength, height/2 + 20);


    // Y Axis

    for (int i = 0; i < Constants.totalStep; i++)
      text(nfs(i * Constants.delta, 1, 1), width/2 - 20, i * stepLength);


    popMatrix();
  }


}
