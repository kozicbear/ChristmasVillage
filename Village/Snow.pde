Snow[] flakes = new Snow[300];
Snow[] heavyFlakes = new Snow[1000];

void drawSnow() {
  if(snowLevel == 1){
    for (int i = 0; i < flakes.length; i++) {
      flakes[i] .display();
    }
  }
  else if (snowLevel == 2){
    for (int i = 0; i < heavyFlakes.length; i++) {
      heavyFlakes[i] .display();
    }
  }
}


class Snow {
  float x; 
  float y;
  float alpha;
  float diameter;
  float speed = random(.1, .9);
  float descentX;

  Snow (float tempD) {
    x = random(-50, width+50);
    y = random(0,40);
    diameter = tempD;
  }
  
  void spreadY(int i) {
    y = y - i*3;
  }
  
  void display() {
    alpha = map(y, 0, height, 255, -50);
    noStroke();
    fill(255, alpha);
    ellipse(x, y, diameter, diameter);
    
    // custom modifications to make heavy snow effect
    if(snowLevel == 1){
      y = y + speed;
    }
    else {
      y = y + (2 * speed);
    }
    
    if(snowLevel == 1){
       x = x + descentX;
    }
    else {
      float wind = random(-0.5, 0.5);
      x = x + descentX + wind;
    }
   
    
    //checking the boundary
    if (y > height) {
      y = -diameter;
    }
    if (x < 0-50) {
      x = width+diameter;} 
      else if (x > width+50){
      x = 0-diameter;
    }
    
  }
}
