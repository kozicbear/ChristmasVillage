PImage bg;
PImage house;
PImage mountain;
int y;

// Item placement ranges
  // for y = (420 - 300)
  
// mountains have to be placed in bg
  // y = 500


void setup() {
  size(1200, 750);
  // The background image must be the same size as the parameters
  // into the size() method. In this program, the size of the image
  // is 640 x 360 pixels.
  bg = loadImage("Background.jpg");
  house = loadImage("SnowyHouse.png");
  mountain = loadImage("Mountain.png");
}

void draw() {
  background(bg);

  stroke(226, 204, 0);
  line(0, y, width, y);

  y++;
  if (y > height) {
    y = 0;
  }
  
  // TODO: Will have to stick these renders in a conditional that
  // looks at the user's chosen snow level and render different mountains
  // depending on their choice
  
  // left mountains
  image(mountain, -100, 180, mountain.width/2, mountain.width/2);
  image(mountain, 100, 280, mountain.width/3, mountain.width/3);
 
  // right mountains
    image(mountain, 700, 80, mountain.width/1.5, mountain.width/1.5);
  image(mountain, 500, 280, mountain.width/3, mountain.width/3);
  image(mountain, 600, 185, mountain.width/2, mountain.width/2);

  
  //image(house, 100, 300, house.width/2, house.height/2);
}
