import controlP5.*;
PImage bg;
PImage house;
PImage mountain;
int y;

ControlP5 cp5;
int myColor = color(0,0,0);

int numberOfHouses = 0;
// used to stop houses being rerendered unless user adds a house
int oldNumberOfHouses = 0;

// we want to use this to draw the houses
// update this array to add or remove houses
float[][] houseLocations = new float[11][2];

void setup() {
    size(1200, 750);
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
  bg = loadImage("Background.jpg");
  house = loadImage("SnowyHouse.png");
  mountain = loadImage("Mountain.png");

  //noStroke();
  cp5 = new ControlP5(this);
  
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("numberOfHouses")
     .setPosition(50,700)
     .setWidth(120)
     .setHeight(30)
     .setRange(0,10)
     ;
}
