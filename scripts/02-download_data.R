#### Preamble ####
# Purpose: Downloads and saves the data from Spotify API
# Author: Cher Ning-Li, Kevin Roe
# Date: Oct 10, 2024
# Contact: cher.ning@mail.utoronto.ca
# License: MIT
# Pre-requisites: Have spotify API info saved


#### Workspace setup ####
#install.packages("devtools")
#devtools::install_github("charlie86/spotifyr")
library(spotifyr)
library(tidyverse)

#### Download data ####

linkin <- get_artist_audio_features("linkin park")
saveRDS(linkin, "linkin.rds")
linkin <- readRDS("linkin.rds")

#### Save data ####
write_rds(linkin, "data/01-raw_data/linkin.rds") 
