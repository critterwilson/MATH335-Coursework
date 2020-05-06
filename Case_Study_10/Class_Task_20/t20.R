pacman::p_load(downloader, sf, fs, tidyverse)

#Read URL Object to a SHP Object Function
read_shp_url <- function(path) {
  
  df <- tempfile(); uf <- tempfile()
  download(path, df, mode = "wb")
  unzip(df, exdir = uf)
  shp_object <- read_sf(uf)
  file_delete(df); dir_delete(uf)
  
  shp_object
}

#Get File Paths
dam_path <- "https://opendata.arcgis.com/datasets/e163d7da3b84410ab94700a92b7735ce_0.zip?outSR=%7B%22latestWkid%22%3A102605%2C%22wkid%22%3A102605%7D"
us_path <- "https://byuistats.github.io/M335/data/shp.zip"
well_path <- "https://opendata.arcgis.com/datasets/1abb666937894ae4a87afe9655d2ff83_1.zip?outSR=%7B%22latestWkid%22%3A102605%2C%22wkid%22%3A102605%7D"
water_path <- "https://research.idwr.idaho.gov/gis/Spatial/Hydrography/streams_lakes/c_250k/hyd250.zip" 


#Read Paths into Function
dams <- read_shp_url(dam_path)
us <- read_shp_url(us_path)
wells <- read_shp_url(well_path)
river <- read_shp_url(water_path)


#Get Snake River and Henry's Fork
hfsr <- river %>% 
  filter(FEAT_NAME %in% c("Snake River", "Henrys Fork"))

#Filter out small Wells
wells_big <- wells %>% 
  filter(Production > 5000)

#Get Idaho State Map
idaho <- us %>% 
  filter(StateName == "Idaho")

#Filter Dams based on Surface Area
dam_big <- dams %>% 
  filter(SurfaceAre > 50)

#Plot Data
ggplot() +
  geom_sf(data = idaho) +
  geom_sf(data = wells_big) +
  geom_sf(data = hfsr, color = "blue") +
  geom_sf(data = dam_big, color = "green")
