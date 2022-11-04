Particle[] bullet;
void setup(){
  size(400,400);
  background(0);
  bullet = new Particle[1000];
  for (int i = 0; i < bullet.length; i++) {
    bullet[i] = new Particle();
    bullet[0] = new OddballParticle();
  }
}
void draw(){
  background(0);
  for(int i = 0; i < bullet.length; i++){
    bullet[i].move();
    bullet[i].show();
  }
}

class Particle {
  double myX, myY, mySpeed, myAngle;
  Particle() {
    myX = 200;
    myY = 200;
    mySpeed = Math.random() * 2;
    myAngle = Math.random() * 2 * Math.PI;
  }
  void show() {
    fill(255,255,255,40);
    stroke(255,0,0);
    ellipse((float)myX, (float)myY, 10, 10);
  }
  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}
class OddballParticle extends Particle { //just an orb that's larger than the character
  OddballParticle() {
    myX = 200;
    myY = 200;
    mySpeed = Math.random() * 2;
    myAngle = Math.random() * 2 * Math.PI;
  }
  void show() {
    fill(255,255,255,50);
    stroke(0,255,0);
    ellipse((float)myX, (float)myY, 100, 100);
  }
  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}
