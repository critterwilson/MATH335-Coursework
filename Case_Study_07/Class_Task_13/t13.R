pacman::p_load(tidyverse, haven, stringr, zoo, here)

dat <- read_csv(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.csv"))

x <- dat %>%
  separate(contest_period, into = c("begin", "end"), sep = "-", remove = FALSE) %>% 
  separate(end, into = c("end_month", "end_year"), sep = -4) %>% 
  mutate(begin_year = ifelse(str_detect(begin, "[[:digit:]]"), 
                              str_sub(begin, -4), end_year)) %>% 
  mutate(begin_month = str_sub(begin, start = 1, end = 3)) %>% 
  mutate(end_month = str_sub(end_month, start = 1, end = 3)) %>% 
  mutate(begin_month = match(begin_month, month.abb)) %>% 
  mutate(end_month = match(end_month, month.abb)) %>% 
  mutate(begin_date = as.yearmon(paste(begin_year, begin_month), "%Y %m")) %>% 
  mutate(end_date = as.yearmon(paste(end_year, end_month), "%Y %m")) %>% 
  select(c(1, 8, 7, 3, 4, 9, 10, 5, 6))

custom.col <- c("#D16103", "#52854C", "#293352")

plot <- x %>% 
  filter(end_month == 6 | end_month == 12) %>% 
  ggplot(aes(x = end_date, y = value, label = value)) +
  geom_point(data = x, aes(x = end_date, y = value, 
                           color = variable), alpha = .3) +
  geom_line(stat = "identity", aes(color = variable)) +
  geom_point(stat = "identity", aes(color = variable), size=6) + 
  geom_text(color = "white", size = 2) +
  scale_color_manual(values = c("#D16103", "#52854C", "#293352")) +
  theme_bw() +
  labs(title = "Six-month Stock Market Returns",
       x = "Date", y = "Value", color = "Variable")

ggsave(filename = "market.png", path = here("Case_Study_07", "Class_Task_13"), 
       plot = plot, width = 15, units = "in")
  


  