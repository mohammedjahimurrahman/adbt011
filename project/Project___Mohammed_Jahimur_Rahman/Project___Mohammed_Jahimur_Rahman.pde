//Movement newMove;

//void settings() {
//  size(400, 400);
//}

//void setup() {
//    newMove = new Movement();
//}



//void draw() {
//  background(255);
//  fill(255, 0, 0);
//  newMove.draw();
//  newMove.obstacles();
//  newMove.challenge();
//  newMove.movement();
//  newMove.collisionDetection();
//  newMove.score();
  
//}


MovementV2 newMove;

void settings() {
  size(800, 800);
}

void setup() {
    newMove = new MovementV2();
}



void draw() {
  background(255);
  fill(255, 0, 0);
  newMove.splashScreen();
  newMove.draw();
  newMove.obstaclesAndPoints();

  
}
