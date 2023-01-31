# Processing Admin 2 country files

# Libraries and functions ------------------
library(tidyverse)
library(sf)
library(fs)

# Functions
fix_accents <- function(string){
  string |> 
    stringi::stri_trans_general("Latin-ASCII") |> 
    gsub(pattern = "\\s*\\([^\\)]+\\)", replacement = "") |> 
    stringr::str_to_title()
}

fix_accents("Côte d'Ivoire")

dir <- "output/adm2"
jus <- "raw/justin-box/adm2"
hdx <- "raw/HDX/adm2"

# Angola ---------------------
# Admin2: 163 
# Source: HDX (161)
cty <- "Angola"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp"))
plot(adm2)

# Output
dir_create(dir, "Angola")
st_write(adm2, path(dir, "Angola", "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, "Angola", "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, "Angola", "adm2.rds"))

# Benin -------------------------------------------
# Admin2: 77 
# Source: HDX (77)
cty <- "Benin"

# Read in
adm2 <- st_read("raw/HDX/adm2/Benin/ben_admbnda_adm2_1m_salb_20190816.shp") |> 
  select(ADM0 = adm0_name, ADM1 = adm1_name, ADM2 = adm2_name) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Botswana ------------------------------------------------------
# Admin2: 63? 
# Source: HDX (28)
cty <- "Botswana"

# Read in
adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |> 
  select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Burkina Faso -------------------------------------
# Admin2: 45
# Source: MAP
cty <- "Burkina Faso"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
# adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
#   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Burundi --------------------------------
# Admin2: 119
# Source: HDX
cty <- "Burundi"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Cameroon --------------------------------
# Admin2: 58
# Source: HDX
cty <- "Cameroon"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Cape Verde --------------------------------
# Admin2: 58
# Source: HDX
cty <- "Cape Verde"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Central African Republic --------------------------------
# Admin2: 71
# Source: MAP (72)
cty <- "Central African Republic"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Chad --------------------------------
# Admin2: 61
# Source: HDX (70)
cty <- "Chad"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Comoros --------------------------------
# Admin2: 18
# Source: HDX (17)
cty <- "Comoros"

# Read in
# adm2 <- readRDS(path("raw/justin-box/adm2", cty, "adm2.rds")) |> 
adm2 <- st_read("raw/HDX/adm2/Comoros/com_admbnda_adm2_cosep_ocha_20191205.shp") |>
    select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Congo --------------------------------
# Admin2: 86
# Source: MAP (88)
cty <- "Congo"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

count(adm2, ADM2, sort = T)


# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Cote d'Ivoire --------------------------------
# Admin2: 108
# Source: HDX
cty <- "Cote d'Ivoire"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Djibouti --------------------------------
# Admin2: 20
# Source: HDX (11)
cty <- "Djibouti"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
# adm2 <- st_read("raw/HDX/adm2/Djibouti/geoBoundaries-DJI-ADM2.shp") |>
#     select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
  
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Democratic Republic of the Congo --------------------------------
# Admin2: 171
# Source: HDX 
cty <- "Democratic Republic of the Congo"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Egypt --------------------------------
# Admin2: 351
# Source: HDX (365)
cty <- "Egypt"

# Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
adm2 <- st_read("raw/HDX/adm2/Egypt/egy_admbnda_adm2_capmas_20170421.shp") |>
    select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Equatorial Guinea --------------------------------
# Admin2: 32
# Source: HDX 
cty <- "Equatorial Guinea"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Eritrea --------------------------------
# Admin2: 58
# Source: MAP 
cty <- "Eritrea"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Ethiopia --------------------------------
# Admin2: 90?
# Source: HDX (92)
cty <- "Ethiopia"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Gabon --------------------------------
# Admin2: 49
# Source: MAP
cty <- "Gabon"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
  # adm2 <- st_read("raw/HDX/adm2/Botswana/bwa_admbnda_adm2_2011.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |> 
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Gambia --------------------------------
# Admin2: 43
# Source: HDX (49)
cty <- "Gambia"

# Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
adm2 <- st_read("raw/HDX/adm2/Gambia/gmb_admbnda_adm2_ndma_20220901.shp") |>
    select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

count(adm2, ADM2, sort = T)
tail(count(adm2, ADM2, sort = T))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Ghana --------------------------------
# Admin2: 261
# Source: HDX (260)
cty <- "Ghana"

# Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |> 
adm2 <- st_read("raw/HDX/adm2/Ghana/gha_admbnda_adm2_gss_20210308.shp") |>
    select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Guinea  --------------------------------
# Admin2: 34
# Source: HDX
cty <- "Guinea"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
# adm2 <- st_read("raw/HDX/adm2/Ghana/gha_admbnda_adm2_gss_20210308.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T)
# count(adm2, ADM2, sort = T)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Guinea Bissau  --------------------------------
# Admin2: 38
# Source: HDX (39)
cty <- "Guinea Bissau"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Ghana/gha_admbnda_adm2_gss_20210308.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

count(adm2, ADM2, sort = T) |> 
  filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Kenya  --------------------------------
# Admin2: 290
# Source: HDX
cty <- "Kenya"

# Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
adm2 <- st_read("raw/HDX/adm2/Kenya/ken_admbnda_adm2_iebc_20191031.shp") |>
  select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Lesotho  --------------------------------
# Admin2: 80
# Source: HDX (78)
cty <- "Lesotho"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
# adm2 <- st_read("raw/HDX/adm2/Lesotho/lso_admbnda_adm2_FAO_MLGCA_2019.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Liberia  --------------------------------
# Admin2: 136
# Source: HDX
cty <- "Liberia"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Lesotho/lso_admbnda_adm2_FAO_MLGCA_2019.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Libya  --------------------------------
# Admin2: 106
# Source: HDX (22)
cty <- "Libya"

# Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
adm2 <- st_read("raw/HDX/adm2/Libya/lby_admbnda_adm2_unosat_lbsc_20180507.shp") |>
  select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Madagascar  --------------------------------
# Admin2: 119
# Source: HDX
cty <- "Madagascar"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Lesotho/lso_admbnda_adm2_FAO_MLGCA_2019.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Malawi  --------------------------------
# Admin2: 119
# Source: HDX
cty <- "Malawi"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Lesotho/lso_admbnda_adm2_FAO_MLGCA_2019.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Mali  --------------------------------
# Admin2: 56
# Source: HDX (53)
cty <- "Mali"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Mali/mli_admbnda_adm2_1m_gov_20211220.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

# count(adm2, ADM2, sort = T) |> 
#   filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Mauritania  --------------------------------
# Admin2: 53
# Source: HDX (57)
cty <- "Mauritania"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Mali/mli_admbnda_adm2_1m_gov_20211220.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

count(adm2, ADM2, sort = T) |>
  filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Mozambique  --------------------------------
# Admin2: 128
# Source: HDX (156)
cty <- "Mozambique"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

count(adm2, ADM2, sort = T) |>
  filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Namibia  --------------------------------
# Admin2: 121
# Source: HDX (107)
cty <- "Namibia"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

count(adm2, ADM2, sort = T) |>
  filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Niger  --------------------------------
# Admin2: 63
# Source: HDX (67)
cty <- "Niger"

#1 Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  adm2 <- st_read("raw/HDX/adm2/Niger/NER_adm02_feb2018.shp") |>
  mutate(ADM0 = cty) |> 
  select(ADM0, ADM1 = adm_01, ADM2 = adm_02) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  count(ADM2, sort = T) |>
  filter(n > 1)

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Nigeria  --------------------------------
# Admin2: 774
# Source: HDX (770)
cty <- "Nigeria"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Rwanda  --------------------------------
# Admin2: 30
# Source: HDX
cty <- "Rwanda"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Senegal  --------------------------------
# Admin2: 45
# Source: HDX
cty <- "Senegal"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))


# Sierra Leone  --------------------------------
# Admin2: 16
# Source: HDX (14)
cty <- "Sierra Leone"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))



# Somalia  --------------------------------
# Admin2: 72 
# Source: HDX (74)
# Missing Admin 1
cty <- "Somalia"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# South Africa  --------------------------------
# Admin2: 52
# Source: HDX
cty <- "South Africa"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# South Sudan  --------------------------------
# Admin2: 79
# Source: HDX
cty <- "South Sudan"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Sudan  --------------------------------
# Admin2: 189
# Source: HDX (187)
cty <- "Sudan"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Sudan/ssd_admbnda_adm2_imwg_nbs_20180817.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Swaziland   --------------------------------
# Admin2: 55
# Source: HDX
cty <- "Swaziland"

#1 Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  adm2 <- st_read("raw/HDX/adm2/Swaziland/swz_admbnda_adm2_CSO_2007.shp") |>
  select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Tanzania  --------------------------------
# Admin2: 30
# Source: HDX (40)
cty <- "Tanzania"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Togo  --------------------------------
# Admin2: 30
# Source: HDX (40)
cty <- "Togo"

#1 Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Morocco/mar_admbnda_adm2_unhcr_20201203.shp") |>
  # select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))

# Tunisia  --------------------------------
# Admin2: 24
# Source: HDX
cty <- "Tunisia"

#1 Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  adm2 <- st_read("raw/HDX/adm2/Tunisia/tun_admbnda_adm2_2022.shp") |>
  select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Uganda  --------------------------------
# Admin2: 137
# Source: HDX (135)
cty <- "Uganda"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
# adm2 <- st_read("raw/HDX/adm2/Tunisia/tun_admbnda_adm2_2022.shp") |>
#   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Zambia  --------------------------------
# Admin2: 116
# Source: Internal 
cty <- "Zambia"

# Read in
# adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Tunisia/tun_admbnda_adm2_2022.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
adm2 <- PATHtoolsZambia::retrieve("district-shp") |> 
  mutate(ADM0 = cty) |> 
  select(ADM0, ADM1 = geo_province, ADM2 = geo_district) |> 
  mutate_if(is_character, fix_accents)

plot(adm2)
adm2

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
# Zimbabwe  --------------------------------
# Admin2: 63
# Source: HDX (91)
cty <- "Zimbabwe"

# Read in
adm2 <- st_read(path("raw/justin-box/adm2", cty, "adm2.shp")) |>
  # adm2 <- st_read("raw/HDX/adm2/Zimbabwe/zwe_admbnda_adm2_zimstat_ocha_20180911.shp") |>
  #   select(ADM0 = ADM0_EN, ADM1 = ADM1_EN, ADM2 = ADM2_EN) |>
  mutate_if(is_character, fix_accents)
plot(adm2)

adm2 |> 
  st_drop_geometry() |> 
  as_tibble() |> 
  add_count(ADM2, sort = T) |>
  arrange(desc(n))

# Output
dir_create(dir, cty)
st_write(adm2, path(dir, cty, "adm2.shp"), driver = "ESRI Shapefile")
st_write(adm2, path(dir, cty, "adm2.json"), driver = "GeoJSON")
saveRDS(adm2, path(dir, cty, "adm2.rds"))
