pacman::p_load(tidyverse, lubridate, riem, ggcorrplot, patchwork)

dat_carwash <- read.csv("https://byuistats.github.io/M335/data/carwash.csv")
dat_temp <- riem_measures(station = "RXE",  date_start = "2016-05-13",  
                          date_end  = "2016-07-17")

dat_carwash$time <- dat_carwash$time %>% 
  ymd_hms() %>% 
  with_tz(tzone = "America/Denver") %>% 
  ceiling_date(unit = "hours")

dat_carwash <- dat_carwash %>% 
  group_by(name, type, time) %>% 
  summarize(sum = sum(amount)) 

dat_temp$valid <- dat_temp$valid %>% 
  ymd_hms() %>% 
  with_tz(tzone = "America/Denver") %>% 
  ceiling_date(unit = "hours")

dat_temp <- dat_temp %>% 
  filter(!is.na(tmpf)) %>% 
  group_by(station, valid) %>% 
  summarize(tmpf = mean(tmpf))

dat <- left_join(dat_carwash, dat_temp, by = c("time" = "valid"))

p1 <- dat %>% 
  filter(!is.na(tmpf)) %>% 
  ggplot(aes(x = time, y = tmpf, color = tmpf)) +
  geom_line()

p2 <- dat %>% 
  filter(!is.na(tmpf)) %>% 
  ggplot(aes(x = time, y = sum)) +
  geom_line() +
  facet_grid(~name, rows = 1)
  


