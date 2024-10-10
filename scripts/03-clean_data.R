#### Preamble ####
# Purpose: Cleans the raw Spotify data from Linkin Park
# Author: Cher Ning-Li, Kevin Roe
# Date: Oct 10, 2024
# Contact: cher.ning@mail.utoronto.ca
# License: MIT
# Pre-requisites: have Linkin Park data downloaded from Spotify API

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_rds("data/01-raw_data/linkin.rds")

cleaned_data <-
  raw_data |> 
  janitor::clean_names() |>
  select(album_release_date, instrumentalness, loudness) |>
  tidyr::drop_na() |> filter(album_release_date != "2000")

#### Save data ####
write_rds(cleaned_data, "data/02-analysis_data/analysis_data.rds")

