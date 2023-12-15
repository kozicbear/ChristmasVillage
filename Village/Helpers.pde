void drawBG() {
  // left mountains
  image(mountain, -100, 180, mountain.width/2, mountain.width/2);
  image(mountain, 100, 280, mountain.width/3, mountain.width/3);
 
  // right mountains
  image(mountain, 700, 80, mountain.width/1.5, mountain.width/1.5);
  image(mountain, 500, 280, mountain.width/3, mountain.width/3);
  image(mountain, 600, 185, mountain.width/2, mountain.width/2);
}

// Method to sort by column
int[][] sortByColumn(float[][] arr, int col) {
  int[][] intArr = new int[arr.length][2];
  
  for (int i = 0; i < arr.length; i++) {
    for (int j = 0; j < arr[0].length; j++) {
      intArr[i][j] = (int) arr[i][j];
    }
  }
  // Using built-in sort function Arrays.sort with lambda expressions   
  Arrays.sort(intArr, (a, b) -> Integer.compare(a[col],b[col])); // increasing order   
  
  return intArr;
}


void drawObjects(int[][] locs, String type) {
  // check what string for object is passed
  if (type == "House") {
    if (snowLevel == 0) {
      drawWeatherObject(locs, house, 0, 0, houseYMin, houseYMax, houseSize);
    }
    else if (snowLevel == 1) {
      drawWeatherObject(locs, littleSnowHouse, 0, -1.5, houseYMin, houseYMax, houseSize);
    }
    else {
      drawWeatherObject(locs, snowyHouse, 3, 7.1, houseYMin, houseYMax, houseSize);
    }
  }
  
  if (type == "Tent") {
    if (snowLevel == 0) {
      drawWeatherObject(locs, tent, 0, 0, tentYMin, tentYMax, tentSize);
    }
    else if (snowLevel == 1) {
      drawWeatherObject(locs, littleSnowTent, 0, -1.5, tentYMin, tentYMax, tentSize);
    }
    else {
      drawWeatherObject(locs, snowyTent, 3, 7.1, tentYMin, tentYMax, tentSize);
    }
  }
  // Move it left x--, move down y--
  if (type == "Tree") {
    if (random(0, 1) == 0) {
      if (snowLevel == 0) {
      drawWeatherObject(locs, tree, 0, 0, treeYMin, treeYMax, treeSize);
      }
      else if (snowLevel == 1) {
        drawWeatherObject(locs, littleSnowTree, 3, -21, treeYMin, treeYMax, treeSize);
      }
      else {
        drawWeatherObject(locs, snowyTree, 3, -19, treeYMin, treeYMax, treeSize);
      }
    }
    else {
      if (snowLevel == 0) {
        drawWeatherObject(locs, tree, 0, 0, treeYMin, treeYMax, treeSize);
      }
      else if (snowLevel == 1) {
        drawWeatherObject(locs, littleSnowTree, 3, -21, treeYMin, treeYMax, treeSize);
      }
      else {
        drawWeatherObject(locs, snowyTree, 3, -19, treeYMin, treeYMax, treeSize);
      }
    }
  }
  
  if (type == "ChristmasTree") {
    if (snowLevel == 0) {
      drawWeatherObject(locs, christmasTree, 0, 0, christmasTreeYMin, christmasTreeYMax, christmasTreeSize);
    }
    else if (snowLevel == 1) {
      drawWeatherObject(locs, littleSnowChristmasTree, 3, -21, christmasTreeYMin, christmasTreeYMax, christmasTreeSize);
    }
    else {
      drawWeatherObject(locs, snowyChristmasTree, 3, -19, christmasTreeYMin, christmasTreeYMax, christmasTreeSize);
    }
  }
  if (type == "Lamppost") {
    drawWeatherObject(locs, lamppost, 0, 0, lamppostsYMin, lamppostsYMax, lamppostSize);
  }
  
}

// offSet is used to try and keep object in same pos regardless of snow
void drawWeatherObject(int[][] locs, PImage type, float x_offSet, float y_offSet, int y_min, int y_max, int[] size) {
  int range = (y_max - y_min) / 4;
  
  for (int i = 0; i < locs.length; i++){
    if (locs[i][1] != 0){
      int x = locs[i][0];
      int y = locs[i][1];
      int threshold1 = y_min + range;
      int threshold2 = y_min + (2 * range);
      int threshold3 = y_min + (3 * range);
      if (y_min <= y && y < threshold1) {
        //System.out.println("here");
        image(type, x - (x_offSet * 0.7), y - (y_offSet * 0.7), type.width/size[0], type.height/size[0]);
      }
      else if (threshold1 <= y && y < threshold2) {
        //System.out.println("here2");
        // have to divid offset here to ensure smaller objects dont move massively comparitively to larger ones
        image(type, x - (x_offSet * 0.8), y - (y_offSet * 0.8), type.width/size[1], type.height/size[1]);
      }
      else if (threshold2 <= y && y < threshold3) {
        //System.out.println("here3");
        image(type, x - (x_offSet * 0.9), y - (y_offSet * 0.9), type.width/size[2], type.height/size[2]);
      }
      else {
        //System.out.println("here4");
        image(type, x - x_offSet, y - y_offSet, type.width/size[3], type.height/size[3]);
      }
    }
  }
}
