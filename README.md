# All22 Computer Vision
Computer Vision tags on all 22 football film


## Purpose
Create models off to predict coverages, blitz, qb spies, offensive personnel, zone/man, etc. utilizing native film. The goal is to help to reduce time tagging videos by predicting coverages with confidence

Inspiration: https://www.opensourcefootball.com/posts/2021-05-31-computer-vision-in-r-using-torch/


## Process
1. Find All 22 NCAAF Football Film
2. Slice Film by ESPN Game ID (to join for future tagging with @cfbfastR data
3. Create Training Data w/ manual tags
4. Build Models using CNN model architecture and with base architecture of ImageNet (VGG16)
5. Test w/ separate tags

## Games currently sampling plays to train model (list will continue to grow)
- 2022 Alabama vs Georgia National Championship Game (https://www.espn.com/college-football/game/_/gameId/401331242)
- 2020 Clemson vs LSU National Championship Game (https://www.espn.com/college-football/game/_/gameId/401135295)
- 2020 Baylor vs Georgia Sugar Bowl (https://www.espn.com/college-football/game/_/gameId/401135289)
- 2019 Nevada vs Hawaii (https://www.espn.com/college-football/game/_/gameId/401117515)
- 2017 Ohio State vs Indiana Season Opener (https://www.espn.com/college-football/game/_/gameId/400935229)
- 2015 Baylor vs Oklahoma State (https://www.espn.com/college-football/game/_/gameId/400763462)

## Defensive Coverage Model Architecture
![image](https://user-images.githubusercontent.com/20390351/192573695-cc4016f7-d953-4e88-8ce8-e0d2b3245b2c.png)


## Model Performance
54% on test set so far (Majority of coverages are Cover 2)

## To - Do
- Find more instances of Cover 3/4
- Add Blitz Probability



