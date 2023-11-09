class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  float colourR = random(0, 255);
  float colourG = random(0, 255);
  float colourB = random(0, 255);
  
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    fill(colourR, colourG, colourB);
    ellipse(position.x, position.y, 10, 10);
  }
}
