# ChristmasVillage

## Overview
With the coming of winter, and a lack of snow here in main, I thought we could all use a boost in morale by enriching the Christmas Spirit. TA-DA... welcome to the Christmas Village creator. Here users can create their own Christmas Village in real time. Users can control how many houses, tents, trees, christmas tress, and lampposts. The greatest feature of all is the snow level adjuster which I must credit to Ziv Schneider (https://openprocessing.org/sketch/115994/) which I add a couple of modifications to for my purposes. Users remain engaged as they can interactively use the sliders to adjust their Christmas Village to their visual pleasure.

## Personal Meaning
I myself was sad to see the snow disappear in Maine so soon. I felt, a little escape to a snowy Christmas Village was just what I needed this time of year, and I hope that this project will provide that same escape to others as well. 

## Challenges
Dealing with rendering issues was the greatest hurdle of this project. First there was the issue with draw ordering. With a 2D environment, trying to mock a 3D one, items in the back must be drawn first to ensure you don't have flying houses. For indinivdual item types I was able to sort the items by y values so that items in the back are drawn first; however, I was not able to sort all the items by their y's by the deadline and thus items of different types will overlap each other.

A second issue was that of resizing object that are supposed to appear in the distance. The further up on the y axis an image is, the smaller it had to be drawn, and I resolved this issue with a size parameter in my drawWeatherObjects method.

## Bugs and Issues
At the time of writing this, the draw ordering is still not perfect. This will cause some flying objects but it is not so harsh on the eye that it is a dealbreaker.

## Credits
Once again, I utilized the logic for snow fall from Ziv Schneider (https://openprocessing.org/sketch/115994/). This is a personal project for no economic gain and I hope it is acceptable to do so.
