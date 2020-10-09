
//class Movement {
//  float ranX[] = new float[100];
//  float ranY[] = new float[100];
//  float ranObstX[] = new float[100];
//  float ranObstY[] = new float[100];
//  int numRect = 0;
//  int numObst = 0;
//  boolean showMain = true;
//  boolean showObst;
//  int addToCollision;
//  float x = 100;
//  float y = 100;
//  boolean collision;
//  boolean lost;
//  int score = 0;


//  Movement() {
//    for (int i = 0; i<ranX.length; i=i+1) {
//      ranX[i] = random(0, 380);
//      ranY[i] = random(0, 325);
//    }
//    for (int i = 0; i<ranObstX.length; i=i+1) {
//      ranObstX[i] = random(0, 380);
//      ranObstY[i] = random(0, 325);
//    }
//  }

//  void draw() {

//    ellipse(x, y, 10, 10);
//  }

//  void movement() {


//    if (x > 380) {
//      x = -0 ;
//    } else if (x < -50) {
//      x = 380;
//    } else if (y > 330) {
//      y = 10;
//    } else if (y < 4) {
//      y = 330;
//    }


//    if (key == 'w') {
//      y = y+1;
//    } else if (key == 's') {
//      y = y-1;
//    } else if (key == 'a') {
//      x = x+1;
//    } else if (key == 'd') {
//      x = x-1;
//    }
//  }


//  void collisionDetection() {

//    if (showMain == true) {
//      float distance = dist(ranX[numRect], ranY[numRect], x, y);

//      //print(collision);
//      if (distance > 15) {
//        collision = false;
//      }
//      if (collision == false) {
//        fill(#28A718);
//        rect(ranX[numRect], ranY[numRect], 10, 10);
//        if (distance < 12) {
//          numRect+=1;
//          collision = true;
//          score+=1;
//        }
//      }
//    }
//  }


//  void score() {    
//    textSize(20);
//    fill(0);
//    String myText = "SCORE: " + Integer.toString(score);
//    text(myText, 250, 50);
//  }

//  void obstacles() {
//    if (lost==true) {

//      background(255, 255, 255);
//      textSize(40);
//      text("YOU LOST", 100, 100); 
//      x = 0;
//      y = 0;
//      showMain = false;
//    }

//    if (showMain == true) {
//      float distance2 = dist(ranX[numRect], ranY[numRect], x, y);
//      float distToObst = dist(ranObstX[numObst], ranObstY[numObst], x, y);
//      int lose = 0;

//      if (distToObst < 15) {
//        lost=true;
//      }


//      //if (distance2 > 17) {
//      if (collision==false) {
//        showObst = true;
//      }
//      if (showObst == true) {
//        fill(0, 0, 0);
//        rect(ranObstX[numObst], ranObstY[numObst], 20, 20);
//        //if (distance2 < 16) {
//        if (collision==true) {
//          numObst+=1;
//          showObst = false;
//        }
//      }
//    }
//  }


 


//  void challenge() {
    
//    boolean addSpeed = true;
//    if (collision == true) {
//      addSpeed = true;
//    }
//      if (addSpeed == true) {
//      if (key == 'w') {
//        y = (y+score-0.5);
//      } else if (key == 's') {
//        y = (y-score+0.5);
//      } else if (key == 'a') {
//        x = (x+score-0.5);
//      } else if (key == 'd') {
//        x = (x-score+0.5);
//      }
    
//    }
//  }
//}
