# Getting administrative boundaries from Humanitarain Data Exchange (HDX)

# Libaries and connect to HDX -------------------------------
library(rhdx)
library(tidyverse)
library(sf)
library(fs)

set_rhdx_config(hdx_site = "prod")
get_rhdx_config()
search_datasets("Africa shapefile")

# KEMRI/WHO health facility list
hfs_geolist <- read_csv("reference-files/00 SSA MFL (130219).csv")

# West and Central Africa ------------------------------------
west_central_adm2 <- search_datasets("west-and-central-africa-administrative-boundaries-levels") |> 
  pluck(1) |> 
  get_resource(3) |> 
  read_resource(simplify_json = TRUE, download_folder = tempdir())

plot(st_geometry(west_central_adm2))
write_rds(west_central_adm2, "raw/HDX/adm2/west-and-central-africa")

west_central_adm1 <- search_datasets("west-and-central-africa-administrative-boundaries-levels") |> 
  pluck(1) |> 
  get_resource(2) |> 
  read_resource(simplify_json = TRUE, download_folder = tempdir())

plot(st_geometry(west_central_adm1))
write_rds(west_central_adm1, "raw/HDX/adm1/west-and-central-africa")

west_central_adm0 <- search_datasets("west-and-central-africa-administrative-boundaries-levels") |> 
  pluck(1) |> 
  get_resource(1) |> 
  read_resource(simplify_json = TRUE, download_folder = tempdir())

plot(st_geometry(west_central_adm0))
write_rds(west_central_adm2, "raw/HDX/adm0/west-and-central-africa")

# Greater Horn of Africa ----------------------------------------
horn_adm0 <- search_datasets("Greater Horn of Africa Countries") |> 
  pluck(1) |> 
  get_resource(1) |> 
  read_resource(simplify_json = TRUE, download_folder = tempdir())

plot(st_geometry(horn_adm0))


