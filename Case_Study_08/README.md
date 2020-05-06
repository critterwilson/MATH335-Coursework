pacman::p_load(tidyverse, lubridate)

dat <- read.csv("https://byuistats.github.io/M335/data/carwash.csv")

dat %>% 
  mutate()

mdy("January 21st, 2017")
ymd("2012-01-01")
myd("March 2016 - 23")
"March 23 2016" %>% mdy() %>% wday()
"March 23 2016" %>% mdy() %>% yday()

jan31 <- ymd("2013-01-31")
feb31 <- jan31 + dyears(8)
mtime <- "January 31st, 2013 06:35:27"  
mtimef <- mtime %>% mdy_hms()
mtime %>% mdy_hms() + hours(27) + minutes(14)

force_tz(mtimef, tzone = "America/Denver") # copy and paste
with_tz(mtimef, tzone = "America/Denver") # convert to other timezone mathematically

mtimef %>% floor_date(unit = "hour")
mtimef %>% floor_date(unit = "15 minutes")
mtimef %>% ceiling_date(unit = "hour")
mtimef %>% ceiling_date(unit = "15 minutes")
mtimef %>% round_date(unit = "hour")
mtimef %>% round_date(unit = "34 minutes")
 