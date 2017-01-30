// timeline in the city
// Move the moon to see changes.
// Web version: https://linnnh.github.io/processingCanvas/

float rainHeightOne = 5;
float rainHeightTwo = 5;
float rainHeightThree = 5;
float blueRain = 0;

void setup() {
  size(800, 800);
}

void draw() {
  // logic
  blueRain = blueRain + 1;
  
  rainHeightOne = rainHeightOne + 1.2;
  rainHeightTwo = rainHeightTwo + 1.4;
  rainHeightThree = rainHeightThree + 1.3;
  
  noCursor();
  // set the canvas white!
  if (mousePressed == true) {
    fill(#00114D);
  } else {
    fill(243, 240, 235);
  }
  rect(0, 0, 800, 800);
  //background(243, 240, 235);
  //background(#000000);
  
  // set the gradient background
  // integer for RGB
  int r = 136;
  int g = 213;
  int b = 198;
  
  // sky
  for (int i = 10; i < 791; i = i + 5) {
    // set the boundaries
    float mapped = map(mouseY, 0, 800, 0, 255);
    // let i change R/G/B value
    strokeWeight(1);
    stroke(i, mapped, b);
    // make gradient with lines
    line(190, i, 610, i);
  }

  // rain group 1
  for (int i = 195; i < 280; i = i + 22) {
    // set the boundaries
    float mapped = map(mouseY, 0, 800, 0, 255);
    // let i change R/G/B value
    strokeWeight(2);
    stroke(1, 1, blueRain, 60);
    // make gradient with lines
    line(i, 5, i, rainHeightOne);
  }
  
  // rain group 2
  for (int i = 295; i < 390; i = i + 22) {
    // set the boundaries
    float mapped = map(mouseY, 0, 800, 0, 255);
    // let i change R/G/B value
    stroke(1, 1, blueRain, 60);
    // make gradient with lines
    line(i, 5, i, rainHeightTwo);
  }
  
  // rain group 3
  for (int i = 405; i < 610; i = i + 22) {
    // set the boundaries
    float mapped = map(mouseY, 0, 800, 0, 255);
    // let i change R/G/B value
    stroke(1, 1, blueRain, 60);
    // make gradient with lines
    line(i, 5, i, rainHeightThree);
  }
  
  if (rainHeightOne >= 800 || rainHeightTwo >= 800 || rainHeightThree >= 800)  {
   rainHeightOne = 5;
   rainHeightTwo = 5;
   rainHeightThree = 5;
   } else {
   println("it's raining");
   }
  


  //know your mouse!
  println("x: "+ mouseX);
  println("y: "+ mouseY);

  // sun
  stroke(255, 255, 0);
  fill(#F5EC8A);
  ellipse(mouseX, mouseY, 25, 25);
  
  // buildings
  noStroke();
  fill(#ffffff);
  rect(200, 455, 47, 28);
  
  noStroke();
  fill(#ffffff);
  rect(238, 436, 70, 47);
  
  noStroke();
  fill(#ffffff);
  rect(303, 397, 46, 86);
  
  noStroke();
  fill(#ffffff);
  rect(345, 359, 50, 124);
  
  noStroke();
  fill(#ffffff);
  rect(425, 450, 50, 33);

  noStroke();
  fill(#ffffff);
  ellipse(450, 450, 50, 50);
  
  noStroke();
  fill(#ffffff);
  triangle(370, 323, 344, 360, 396, 360);

  noStroke();
  fill(#ffffff);
  quad(531, 483, 558, 483, 556, 379, 530, 345);
  
  noStroke();
  fill(#ffffff);
  rect(394, 373, 31, 110);

  noStroke();
  fill(#ffffff);
  rect(513, 422, 30, 60);
  
  noStroke();
  fill(#ffffff);
  rect(577, 435, 25, 48);
  
  noStroke();
  fill(#ffffff);
  rect(474, 447, 57, 36);
  
  noStroke();
  fill(#ffffff);
  rect(555, 411, 28, 72);
 
}