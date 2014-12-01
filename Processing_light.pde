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
  
  pointLight(255,255, 255, 10, -5, 0);
  directionalLight(255, 255, 255, 1, 0, 0);
  
  spotLight(0, 255, 0, -1, 0, 0, 0, 1, 0, PI/16, 2);
  spotLight(0, 0, 255, 4, 0, 0, 0, 1, 0, PI/16, 2);
  spotLight(255, 0, 0, -6, 0, 0, 0, 1, 0, PI/16, 2);
  
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
  
  pushMatrix();
  fill(0,0,255);
  translate(-5, 0, 0);
  sphere(1);
  
  fill(255,0,0);
  translate(4, 0, 0);
  sphere(1);
  
  fill(0,255,0);
  translate(4, 0, 0);
  sphere(1);
  popMatrix();
}
