# All22 Computer Vision
Computer Vision tags on all 22 football film


## Purpose
Create models off to predict coverages, blitz, qb spies, offensive personnel, zone/man, etc. utilizing native film. The goal is to help to reduce time tagging videos by predicting coverages with confidence

Inspiration: https://www.opensourcefootball.com/posts/2021-05-31-computer-vision-in-r-using-torch/


## Process
1. Find All 22 NCAAF Football Film
2. Slice Film by ESPN Game ID (to join for future tagging with @cfbfastR data)
3. Add Training Data w/ manual tags (train_labels)
4. Build Models using CNN model architecture and with base architecture of ImageNet (VGG16)
5. Test w/ separate tags (test_labels)

## Games currently sampling plays to train model (list will continue to grow)
(At Least 10 plays of each game are represented in the dataset)
- 2022 Alabama vs Georgia National Championship Game (https://www.espn.com/college-football/game/_/gameId/401331242)
- 2020 Clemson vs LSU National Championship Game (https://www.espn.com/college-football/game/_/gameId/401135295)
- 2020 Baylor vs Georgia Sugar Bowl (https://www.espn.com/college-football/game/_/gameId/401135289)
- 2019 Nevada vs Hawaii (https://www.espn.com/college-football/game/_/gameId/401117515)
- 2019 Oregon vs University of Washington (https://www.espn.com/college-football/game/_/gameId/401114196)
- 2017 Ohio State vs Indiana Season Opener (https://www.espn.com/college-football/game/_/gameId/400935229)
- 2015 Baylor vs Oklahoma State (https://www.espn.com/college-football/game/_/gameId/400763462)
- 2014 TCU vs Kansas (https://www.espn.com/college-football/game/_/gameId/400547892)

*Training set: 130 plays
*Test set: 25 plays

## Defensive Coverage Model Architecture
Utilizing VGG-16 Image Net as the base model architecture: 
https://www.geeksforgeeks.org/vgg-16-cnn-model/
<img width="742" alt="Screen Shot 2022-09-27 at 9 04 21 AM" src="https://user-images.githubusercontent.com/20390351/192577675-98c6c2bc-42c8-4c76-a209-8e999379ba6f.png">

Then add additional layers on top of this model to build the learning specific to our "manual charted" data:
![image](https://user-images.githubusercontent.com/20390351/192573695-cc4016f7-d953-4e88-8ce8-e0d2b3245b2c.png)


## Model Performance
54% on test set so far (Majority of coverages are Cover 2)

Helper Model (ImageNet + Custom Architecture): Training Accuracy: 92%
Custom Architecture: Training Accuracy: ~46% (Need improvement)

## To - Do
- Fix Input shape for testing off of custom architecture
- Find more instances of Cover 3/4
- Add Blitz Probability

## Sample Output
<img width="633" alt="Screen Shot 2022-09-29 at 10 47 34 AM" src="https://user-images.githubusercontent.com/20390351/193144085-1a942ee6-d9e9-41e0-8098-6f0631ee0d86.png">


