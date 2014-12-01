float boxSize = 1;

void setup () {
  size(1200,800,P3D);
}

void draw () {
  translate(width/2.0, height/2.0);
  background(0);
  scale(50);
  rotateX(-0.4);
  
  noStroke();
  
  pushMatrix();
  fill(150,150,150);
  translate(0, 5, 0);
  rotateX(3 * PI/2);
  
  for (int x = -20; x <= 20; x += boxSize) {
    for (int y = -20; y <= 20; y += boxSize) {
      pushMatrix();
      translate(x, y);
      box(boxSize);
      popMatrix();
    }
  }
  popMatrix();
}
