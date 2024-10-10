#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

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

