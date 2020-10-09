class MovementV2 { //<>// //<>// //<>// //<>//
  boolean showMain;
  boolean startClicked = false;
  boolean endGame = false;
  boolean ambientBackground = false;
  boolean showBar = false;
  float ranX[] = new float[100];
  float ranY[] = new float[100];
  String[] scoreSave;


  float x = width/2;
  float y = height/2;
  int numObstacles;
  int pointIndex = 0;
  int score;
  int obstIndex = 0;
  PVector[] obstIndexes = new PVector[100];

  float distToPoint;
  float distToObst;
  float distToReturn;

  String initial;


  ///

  MovementV2() {

    for (int i = 0; i<ranX.length; i++) {
      ranX[i] = random(0, width-10);
      ranY[i] = random(0, height-10);
    }

    for (int i = 0; i<ranX.length; i++) {

      obstIndexes[i] = new PVector(random(0, width), random(0, height));
    }
  }

  //

  void splashScreen() {
    if (endGame == true) {
      showMain = false;
      float x = width/2;
      float y=height/2;

      textSize(25);
      fill(255, 0, 0);
      text("FAIL", x, y);

      
    }

    
    


    if (startClicked == false) {
      background(255, 255, 255);
      textSize(25);
      textAlign(CENTER);
      text("Project", x, height-10);
      textSize(15);
      textAlign(CENTER);
      text("START", x, y+5);
      fill(0, 0, 0, 50);
      rectMode(CENTER);
      rect(x, y, 70, 25, 7);
      
      


     
    }

    float distanceToStart = dist(x, y, mouseX, mouseY);
    if (mousePressed) {
      if (distanceToStart < 20) {
        showMain=true;
        startClicked = true;
      }
    }

   


    if (showMain == true) { 

      if (x > width) {
        x = 0 ;
      } else if (x < 0) {
        x = width;
      } else if (y > height) {
        y = 0;
      } else if (y < 0) {
        y = height;
      }


      if (key == 'w') {
        y = y+(height/200);
      } else if (key == 's') {
        y = y-(height/200);
      } else if (key == 'a') {
        x = x+(width/200);
      } else if (key == 'd') {
        x = x-(width/200);
      }
    }
  }


  void draw() {

    if (showMain == true) { 
      ellipse(x, y, 10, 10);
    }
  }


  void obstaclesAndPoints() {


    if (showMain == true) {


      score();


      fill(0, 255, 0);
      distToPoint = dist(ranX[pointIndex], ranY[pointIndex], x, y);
      for (int i=0; i<pointIndex; i++) {

        distToObst = dist(obstIndexes[i].x, obstIndexes[i].y, x, y);

        if (distToObst < 10 ) {
          endGame = true;
        }
      }



      if (distToPoint < 10) {
        pointIndex = pointIndex + 1;
        score = score + 1;
        rect(ranX[pointIndex], ranY[pointIndex], 10, 10);
      }

      rect(ranX[pointIndex], ranY[pointIndex], 10, 10);


      fill(0, 0, 0);

      for (int i = 0; i<pointIndex; i++) {
        fill(0);
        line(obstIndexes[i].x, obstIndexes[i].y, x, y);

        rect(obstIndexes[i].x, obstIndexes[i].y, 10, 10);
      }
    }


    println(distToPoint, distToObst);
  }


  void score() {    
    textSize(20);
    fill(0);
    String myText = "SCORE" + " " + Integer.toString(score);
    String myScore = Integer.toString(score);

    text(myText, 250, 50);
  }


  void bar() {


    String[] data = loadStrings("saved.txt");

    float saved = float(score);    
    float barHeight = map(saved, 0, 30, 1, 160);
    if (showBar == true) {
      fill(0);
      rect(x, 20, 65, barHeight);
    }
  }
}
