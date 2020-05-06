#devtools::install_github("ropensci/USAboundaries")
#devtools::install_github("ropensci/USAboundariesData")

pacman::p_load(tidyverse, USAboundaries, USAboundariesData, ggrepel, sf)

#Get States Map
states <- us_states() %>% 
  filter(name != 'Alaska', name != 'Hawaii', name != 'Puerto Rico')

#Get Idaho Counties
idaho_counties <- us_counties(states = 'Idaho')

#Format City Data
city <- us_cities() %>% 
  filter(!state_abbr %in% c("AK", "HI", "PR")) %>% 
  group_by(state_name) %>% 
  top_n(3, population)


#Get Max Pop. Cities
city_max <- city %>%
  group_by(state_abbr) %>% 
  summarise(max(population)) %>% 
  select(`max(population)`) %>% 
  unlist() %>% 
  str_flatten("|")

#Get Min Pop. Cities
city_min <- city %>%
  group_by(state_abbr) %>% 
  summarise(min(population)) %>% 
  select(`min(population)`) %>% 
  unlist() %>% 
  str_flatten("|")

#Get Mid Cities
cities <- city %>% 
  mutate(newpop = (population/1000)) %>% 
  group_by(state_abbr) %>% 
  mutate(rank = case_when(str_detect(population, city_max) ~ 1, str_detect(population, city_min) ~ 3, TRUE ~ 2))

top_cities <- cities %>% filter(rank == 1)

#Plot Data
ggplot() + 
  geom_sf(data = states, fill = NA) +
  geom_sf(data = idaho_counties, fill = NA) +
  geom_sf(data = cities, aes(size = newpop, color = rank)) +
  theme_bw() +
  labs(size = "Population\n(1000)") +
  guides(color = FALSE) + 
  geom_label_repel(data = top_cities, aes(label = city, geometry = geometry), stat = "sf_coordinates") +
  theme(axis.title.x=element_blank(), axis.title.y=element_blank())
