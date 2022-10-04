library(cfbfastR)
library(tidyverse)
library(ggtext)
library(magick)
library(cowplot)
library(ggrepel)
library(ggimage)
library(gridExtra)
library(grid)
library(RCurl)
library(png)
library(jpeg)


####################3 PLAYMAKER VIZ ##############

##### R script for tagging data to All-22

Sys.setenv(CFBD_API_KEY = "mtU85YjFNgHylNwj/RowQ+Tffwg65fhiZ7S7yhjb5z2bGb+5RqlnljDONQQ0VV3I")

df<-cfbfastR::espn_cfb_pbp(game_id = "400935229",epa_wpa = TRUE)

#write.csv(df,"cfb_401331242.csv",row.names = FALSE)


abbr<-df %>%
  dplyr::select(id_play,pos_team,drive_number,drive_play_number,play_text,down,distance,clock.minutes,clock.seconds,period)



#Ohio State vs. Indiana in 2017
#400935229

## Baylor vs OKST 2015 
#400763462

df1<-cfbfastR::espn_cfb_pbp(game_id = "400763462",epa_wpa = TRUE)

#write.csv(df,"cfb_401331242.csv",row.names = FALSE)


abbr1<-df1 %>%
  dplyr::select(id_play,pos_team,drive_number,drive_play_number,play_text,down,distance,clock.minutes,clock.seconds,period)


### Iowa vs Penn 2017

df2<-cfbfastR::espn_cfb_pbp(game_id = "401114196")

#write.csv(df,"cfb_401331242.csv",row.names = FALSE)



abbr2<-df2 %>%
  dplyr::select(plays_id,drive_team_name,plays_text,plays_start_down,plays_start_distance,plays_clock_display_value,plays_period_number)




