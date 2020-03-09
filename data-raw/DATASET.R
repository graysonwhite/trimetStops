## code to prepare `DATASET` dataset goes here

library(tidyverse)

trimetStops <- read_csv("data-raw/stops.txt")

trimetStops <- trimetStops %>%
  dplyr::mutate(
    location_type = case_when(
      location_type == '0' ~ "platform",
      location_type == '1' ~ "station"
  ))
trimetStops <- trimetStops %>%
  dplyr::select(-stop_code,
                -parent_station,
                -tts_stop_name,
                -zone_id) %>%
  dplyr::rename(id = stop_id,
                name = stop_name,
                description = stop_desc,
                lat = stop_lat,
                long = stop_lon,
                url = stop_url)

usethis::use_data(trimetStops, overwrite = TRUE)
