ControlP5 cp5;

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
int oldNumberOfTents = 0;
float[][] tentLocations = new float[6][2];
int tentYMin = 440;
int tentYMax = 480;
int[] tentSize = new int[]{11, 9, 7, 4};

int trees = 0;
int oldNumberOfTrees = 0;
float[][] treeLocations = new float[21][2];
int treeYMin = 434;
int treeYMax = 438;
int[] treeSize = new int[]{4, 3, 2, 1};

int christmasTrees = 0;
int oldNumberOfChristmasTrees = 0;
float[][] christmasTreeLocations = new float[21][2];
int christmasTreeYMin = 434;
int christmasTreeYMax = 438;
int[] christmasTreeSize = new int[]{4, 3, 2, 2};

int lampposts = 0;
int oldNumberOfLampposts = 0;
float[][] lamppostLocations = new float[21][2];
int lamppostsYMin = 420;
int lamppostsYMax = 424;
int[] lamppostSize = new int[]{4, 3, 2, 1};

int snowLevel = 0;

void setup() {
  size(1200, 750);
  bg = loadImage("Background.jpg");
  mountain = loadImage("Mountain.png");
  littleSnowMountain = loadImage("LittleSnowMountain.png");
  snowyMountain = loadImage("SnowyMountain.png");

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
  
  for (int i = 0; i<flakes.length; i++) { 
    flakes[i] = new Snow(random(2, 10));
    flakes[i].spreadY(i);
  }
  
  for (int i = 0; i<heavyFlakes.length; i++) { 
    heavyFlakes[i] = new Snow(random(4, 15));
    heavyFlakes[i].spreadY(i);
  }
 
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
