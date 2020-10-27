library(tidyverse)
library(drat)
library(hurricaneexposuredata)
library(hurricaneexposure)
library(ggplot2)
library(leaflet)
library(tmap)

addRepo("geanders")


data("hurr_tracks")

data("rain")

head(hurr_tracks)

head(rain)

# The first map


# The second map
us_states_map = tm_shape(hurr_tracks) +
  tm_polygons() + 
  tm_layout(frame = FALSE)





