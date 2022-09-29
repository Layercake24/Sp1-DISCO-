int xPos, yPos, xPosNew, yPosNew;
int diam, diamNew;
int xSpeed, ySpeed, xSpeedNew, ySpeedNew;
int xDirection, yDirection, xDirectionNew, yDirectionNew;
int x=20;
int y=20;

void setup() {
  size(400, 400);
  initCircle();
}



void move() {
  //move big one
  xPos=xPos+(xSpeed*xDirection);
  yPos=yPos+(ySpeed*yDirection);
  
  //move small one
  xPosNew=xPosNew+(xSpeedNew*xDirectionNew);
  yPosNew=yPosNew+(ySpeedNew*yDirectionNew);
}

//void bounce(){
  //if(

void draw() {
background(255);
display();
move();


  for (int i = 0; i <= 5; i++) { //flyt så det ikke dækker kuglerne
    for (int j = 0; j <= 5; j++) {
      fill(random(255), random(255), random(255));
      rect(x*i, y*j, 20, 20);
    }
  }

  
}

void display() {
  //first circle
  circle(xPos, yPos, diam);
  
  //second circle
  circle(xPosNew, yPosNew, diamNew);
  
} 

void initCircle() {
  xPos= diam*2;
  yPos= height/2;
  diam=width/5;
  xSpeed=1;
  ySpeed=1;
  xDirection=1;
  yDirection=1;
  
  xPosNew=width/10;
  yPosNew=height/3;
  diamNew=width/8;
  xSpeedNew=1;
  ySpeedNew=1;
  xDirectionNew=1;
  yDirectionNew=1;
  
}
void keyPressed() {
  if (key=='z') {   
    xDirection=xDirection*-1;
  }
  if (key=='x') {   
    yDirectionNew=yDirectionNew*-1;
  }
}

//lav medtode til at bounce kuglerne rundt på discobrættet
