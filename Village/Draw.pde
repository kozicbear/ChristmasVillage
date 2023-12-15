void draw() {
  background(bg);
  drawBG();
  
  drawHouses();
  drawTents();
  drawTrees();
  drawChristmasTrees();
  drawLampposts();
  drawSnow();
}

void drawHouses() {
  // way we will control not printing houses is if we have a house at 0,0 it is considered not renderable
  // but we always have 10 houses in our array, we just only print the ones in valid positions
  if (houses > oldNumberOfHouses) {
    int diff = houses - oldNumberOfHouses;
    while (diff > 0) {
      houseLocations[oldNumberOfHouses + diff][0] = random(0, 900);
      houseLocations[oldNumberOfHouses + diff][1] = random(houseYMin, houseYMax);
      diff--;
    }
  }
  else if (houses < oldNumberOfHouses) {
    int diff = oldNumberOfHouses - houses;
    while (diff > 0) {
      houseLocations[houses + diff][0] = 0;
      houseLocations[houses + diff][1] = 0;
      diff--;
    }
  }
  
  oldNumberOfHouses = houses;
  
  // sort houses by y to ensure we draw back houses first
  int[][] sorted_houses = sortByColumn(houseLocations, 1);
  
  drawObjects(sorted_houses, "House");
}

void drawTents() {
  if (tents > oldNumberOfTents) {
    int diff = tents - oldNumberOfTents;
    while (diff > 0) {
      tentLocations[oldNumberOfTents + diff][0] = random(0, 900);
      tentLocations[oldNumberOfTents + diff][1] = random(tentYMin, tentYMax);
      diff--;
    }
  }
  else if (tents < oldNumberOfTents) {
    int diff = oldNumberOfTents - tents;
    while (diff > 0) {
      tentLocations[tents + diff][0] = 0;
      tentLocations[tents + diff][1] = 0;
      diff--;
    }
  }
  
  oldNumberOfTents = tents;
  int[][] sorted_tents = sortByColumn(tentLocations, 1);
  
  drawObjects(sorted_tents, "Tent");
}


void drawTrees() {
  if (trees > oldNumberOfTrees) {
    int diff = trees - oldNumberOfTrees;
    while (diff > 0) {
      treeLocations[oldNumberOfTrees + diff][0] = random(0, 900);
      treeLocations[oldNumberOfTrees + diff][1] = random(treeYMin, treeYMax);
      diff--;
    }
  }
  else if (trees < oldNumberOfTrees) {
    int diff = oldNumberOfTrees - trees;
    while (diff > 0) {
      treeLocations[trees + diff][0] = 0;
      treeLocations[trees + diff][1] = 0;
      diff--;
    }
  }

  oldNumberOfTrees = trees;
  int[][] sorted_trees = sortByColumn(treeLocations, 1);
  
  drawObjects(sorted_trees, "Tree");
}

void drawChristmasTrees() {
  if (christmasTrees > oldNumberOfChristmasTrees) {
    int diff = christmasTrees - oldNumberOfChristmasTrees;
    while (diff > 0) {
      christmasTreeLocations[oldNumberOfChristmasTrees + diff][0] = random(0, 900);
      christmasTreeLocations[oldNumberOfChristmasTrees + diff][1] = random(christmasTreeYMin, christmasTreeYMax);
      diff--;
    }
  }
  else if (christmasTrees < oldNumberOfChristmasTrees) {
    int diff = oldNumberOfChristmasTrees - christmasTrees;
    while (diff > 0) {
      christmasTreeLocations[christmasTrees + diff][0] = 0;
      christmasTreeLocations[christmasTrees + diff][1] = 0;
      diff--;
    }
  }
  
  oldNumberOfChristmasTrees = christmasTrees;
  int[][] sorted_christmasTrees = sortByColumn(christmasTreeLocations, 1);
  
  drawObjects(sorted_christmasTrees, "ChristmasTree");
}

void drawLampposts() {
  if (lampposts > oldNumberOfLampposts) {
    int diff = lampposts - oldNumberOfLampposts;
    while (diff > 0) {
      lamppostLocations[oldNumberOfLampposts + diff][0] = random(0, 900);
      lamppostLocations[oldNumberOfLampposts + diff][1] = random(lamppostsYMin, lamppostsYMax);
      diff--;
    }
  }
  else if (lampposts < oldNumberOfLampposts) {
    int diff = oldNumberOfLampposts - lampposts;
    while (diff > 0) {
      lamppostLocations[lampposts + diff][0] = 0;
      lamppostLocations[lampposts + diff][1] = 0;
      diff--;
    }
  }
  
  oldNumberOfLampposts = lampposts;
  int[][] sorted_lamppposts = sortByColumn(lamppostLocations, 1);
  
  drawObjects(sorted_lamppposts, "Lamppost");
}
