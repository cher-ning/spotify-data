#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: cher.ning@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have spotify API info saved
# Any other information needed?


#### Workspace setup ####
#install.packages("devtools")
#devtools::install_github("charlie86/spotifyr")
library(spotifyr)
library(tidyverse)

#### Download data ####

radiohead <- get_artist_audio_features("radiohead")
saveRDS(radiohead, "radiohead.rds")
radiohead <- readRDS("radiohead.rds")

#### Save data ####
write_csv(radiohead, "data/01-raw_data/radiohead.rds") 
