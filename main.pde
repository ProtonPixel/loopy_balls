OpenSimplexNoise noire; //I'm using OpenSimplexNoise, a tool external to processing
int period;
Ball balls[];

void setup() {
  size(600, 600);

  noire = new OpenSimplexNoise();
  period = 240;
  balls = new Ball[50];

  for (int i = 0; i < balls.length; i++)
    balls[i] = new Ball();
}

void draw() {
  background(150, 200, 255);

  for (int i = 0; i < balls.length; i++) {
    stroke(25, 100, 150);

    for (int j = 0; j < balls.length; j++) {
      if (i != j) {
        float dist = PVector.dist(balls[i].position, balls[j].position);
        if (dist < 65)
          line(balls[i].position.x, balls[i].position.y, balls[j].position.x, balls[j].position.y);
      }
    }
    balls[i].run();
  }
}
