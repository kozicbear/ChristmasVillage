void draw() {
  background(bg);
  
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

  // houses
  // Item placement ranges
  // for y = (300 - 420)
  // for x = (0 - 900)

  //if (numberOfHouses != oldNumberOfHouses) {
    // way we will control not printing houses is if we have a house at 0,0 it is considered not renderable
    // but we always have 10 houses in our array, we just only print the ones in valid positions
    if (numberOfHouses > oldNumberOfHouses) {
      houseLocations[numberOfHouses][0] = random(0, 900);
      houseLocations[numberOfHouses][1] = random(300, 420);
    }
    else if (numberOfHouses < oldNumberOfHouses) {
      houseLocations[oldNumberOfHouses][0] = 0;
      houseLocations[oldNumberOfHouses][1] = 0;
    }
    
    oldNumberOfHouses = numberOfHouses;
  //}
  
  for (int i = 0; i < houseLocations.length; i++){
    if (houseLocations[i][1] != 0){
      image(house, houseLocations[i][0], houseLocations[i][1], house.width/2, house.height/2);
    }
  }
  
  
}

// TODO: also for houses that are further back, would be nice to have them be smaller
// to give distance vibez
