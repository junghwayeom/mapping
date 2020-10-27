library(tidyverse)
library(drat)
library(hurricaneexposuredata)
library(hurricaneexposure)
library(ggplot2)
library(leaflet)
library(tmap)
library(sf)
library(tmaptools)
library(tigris)
library(usmap)
library(widgetframe)
library(here)
library(stringr)
addRepo("geanders")


data("hurr_tracks")

data("rain")

head(hurr_tracks)

head(rain)


states <- c("TX","OK","KS","LA", "AR", 
                       "MO", "IA","WI", "MI","IL","IN", 
                       "OH", "KY", "TN", "AL", "MS",
                       "FL", "GA", "SC", "NC", "VA",
                       "WV", "MD", "DE", "PA", "NJ", 
                       "NY", "CT", "RI", "MA", "VT","NH", "ME")

(hurr_tracks <- hurr_tracks%>%filter(storm_id=="Allison-2001"))
pal <- colorQuantile("YlOrRd", NULL, n = 20)
m<-leaflet(data=hurr_tracks) %>% addTiles()%>% addPolygons%>% addMarkers()%>%frameWidget()

leaflet(states) %>% addPolygons()


 


