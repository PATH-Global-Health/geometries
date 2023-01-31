# Country output files
# Organize outputs by country, all files for a country will go in  country 
# folder. Only GeoJSON files

library(tidyverse)
library(sf)
library(fs)
library(rmapshaper)

# Get initial structure from output/adm2 folder
list.dirs("output/adm2", full.names = F)

country_dir <- function(cty) {
  
  message(cty)
  # Create folder
  dir_create("country", cty)
  
  # Read in Admin 2 shapefile
  adm2 <- st_read(path("output", "adm2", cty, "adm2.json"))
  
  # Create Admin1 sf
  adm1 <- ms_dissolve(adm2, "ADM1")
  
  # Create Admin 0 sf
  adm0 <- ms_dissolve(adm1) %>% 
    mutate(ADM0 = cty) %>% 
    select(ADM0)
  
  # Export GeoJSON
  st_write(adm2, path("country", cty, "adm2.json"), driver = "GeoJSON")
  st_write(adm1, path("country", cty, "adm1.json"), driver = "GeoJSON")
  st_write(adm0, path("country", cty, "adm0.json"), driver = "GeoJSON")
  
}

list.dirs("output/adm2", full.names = F)[-1] %>% 
  walk(country_dir)
