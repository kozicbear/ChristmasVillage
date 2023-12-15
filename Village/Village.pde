ControlP5 cp5;
int myColor = color(0,0,0);

int houses = 0;
// used to stop houses being rerendered unless user adds a house
int oldNumberOfHouses = 0;
// we want to use this to draw the houses
// update this array to add or remove houses
float[][] houseLocations = new float[11][2];
int houseYMin = 440;
int houseYMax = 480;
int[] houseSize = new int[]{8, 6, 4, 3};

int tents = 0;
// used to stop houses being rerendered unless user adds a house
int oldNumberOfTents = 0;
// we want to use this to draw the houses
// update this array to add or remove houses
float[][] tentLocations = new float[6][2];
int tentYMin = 440;
int tentYMax = 480;
int[] tentSize = new int[]{11, 9, 7, 4};

int trees = 0;
// used to stop houses being rerendered unless user adds a house
int oldNumberOfTrees = 0;
// we want to use this to draw the houses
// update this array to add or remove houses
float[][] treeLocations = new float[21][2];
int treeYMin = 434;
int treeYMax = 438;
int[] treeSize = new int[]{4, 3, 2, 1};

int christmasTrees = 0;
// used to stop houses being rerendered unless user adds a house
int oldNumberOfChristmasTrees = 0;
// we want to use this to draw the houses
// update this array to add or remove houses
float[][] christmasTreeLocations = new float[21][2];
int christmasTreeYMin = 434;
int christmasTreeYMax = 438;
int[] christmasTreeSize = new int[]{4, 3, 2, 1};

int lampposts = 0;
// used to stop houses being rerendered unless user adds a house
int oldNumberOfLampposts = 0;
// we want to use this to draw the houses
// update this array to add or remove houses
float[][] lamppostLocations = new float[21][2];
int lamppostsYMin = 420;
int lamppostsYMax = 424;
int[] lamppostSize = new int[]{4, 3, 2, 1};


int snowLevel = 0;

void setup() {
    size(1200, 750);
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
  bg = loadImage("Background.jpg");
  mountain = loadImage("Mountain.png");
  littleSnowHouse = loadImage("LittleSnowHouse.png");
  house = loadImage("House.png");
  littleSnowHouse = loadImage("LittleSnowHouse.png");
  snowyHouse = loadImage("SnowyHouse.png");
  
  tent = loadImage("Tent.png");
  littleSnowTent = loadImage("LittleSnowTent.png");
  snowyTent = loadImage("SnowyTent.png");
  
  tree = loadImage("Tree.png");
  littleSnowTree = loadImage("LittleSnowTree.png");
  snowyTree = loadImage("SnowyTree.png");
  
  christmasTree = loadImage("ChristmasTree.png");
  littleSnowChristmasTree = loadImage("LittleSnowChristmasTree.png");
  snowyChristmasTree = loadImage("SnowyChristmasTree.png");
  
  lamppost = loadImage("Lamppost.png");
  //noStroke();
  cp5 = new ControlP5(this);
  
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("houses")
     .setPosition(50,650)
     .setWidth(120)
     .setHeight(30)
     .setRange(0,10)
     ;
     
  cp5.addSlider("tents")
   .setPosition(50,700)
   .setWidth(120)
   .setHeight(30)
   .setRange(0,5)
   ;
   
   cp5.addSlider("trees")
     .setPosition(400,650)
     .setWidth(120)
     .setHeight(30)
     .setRange(0,20)
     ;
     
   cp5.addSlider("christmasTrees")
     .setPosition(400,700)
     .setWidth(120)
     .setHeight(30)
     .setRange(0,3)
     ;
     
   cp5.addSlider("lampposts")
     .setPosition(800,650)
     .setWidth(120)
     .setHeight(30)
     .setRange(0,5)
     ;
     
  cp5.addSlider("snowLevel")
     .setPosition(800,700)
     .setWidth(120)
     .setHeight(30)
     .setRange(0,2)
     ;
   
}
