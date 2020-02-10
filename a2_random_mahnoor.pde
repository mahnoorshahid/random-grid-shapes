//2D ARRAYS
//https://processing.org/tutorials/2darray/
int cols = 10;
int rows = 10;
int[][] myArray = new int[cols][rows];
float x;

float dimension = 2; //width/3;
float dim = 50;
void setup() {
  size(500, 500);
  stroke(255);
  frameRate(1);
}

void draw() {
  background(250, 250, 255);
  translate(width/2-dim-90, height/2-dim+-100);
  grid();
}


void grid() {

  float r = random(255);
  float g = random(255);
  float b = random(255);

  if (mousePressed) {
    r = random(255);
    g = random(5);
    b = random(255);
  }

  for (int i = 0; i < cols; i ++) {
    for (int j = 0; j < rows; j ++) {
      int alpha  = j;
      myArray[i][j] = floor(random(255));

      //float h = random(30);
      noStroke();
      float x = i * 30 ;
      float y = j * 30 ;

      int h = floor(random(20, 40));
      fill( myArray[i][j],  g,  b);
      fill( myArray[i][j],  g,  b);
     
      rect(x, y, 20, h);
      fill(255, 0, 0);

      alpha *= 200;
      y *= 70;
    }
  }
}


void mousePressed() {
  //
  redraw();
}
