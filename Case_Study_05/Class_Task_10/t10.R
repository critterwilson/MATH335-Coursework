pacman::p_load(tidyverse, haven, readxl, downloader, kableExtra)

#[ ] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder
#[x] Import the Dart_Expert_Dow_6month_anova data from GitHub (see details in previous task)
dat <- read_csv(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.csv"))
#[x] The contestant_period column is not “tidy” we want to create a month_end and year_end column from the information it contains
dat_month <- tibble(month_end = month.name, month_number = 1:12)

dat <- dat %>%
  separate(contest_period, into = c("begin", "end"), sep = "-") %>%
  separate(end, into = c("month_end", "year_end"), sep = -4) %>%
  filter(variable == "DJIA") %>%
  select(-begin, -variable) %>%
  mutate(value = as.character(value), 
         month_end = month_end %>% str_replace_all("Dec\\.", "December") %>%
           str_replace_all("Febuary", "February")) %>%
  pivot_wider(id_cols = month_end, names_from = year_end, values_from = value,
              values_fill = list(value = " - ")) %>%
  left_join(dat_month) %>% # could do string replace before join to fix column names
  arrange(month_number) %>%
  select(-month_number)
table <- dat %>% kable()

#[x] Save your “tidy” data as an .rds object
my.dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(my.dir)
saveRDS(dat, file = "Dow_6month.rds")

#[ ] Create a plot that shows the six-month returns by the year in which the returns are collected

dat <- dat %>% 
  pivot_longer(cols = -month_end, names_to = "year")
dat$value = as.numeric(dat$value)
dat$year = as.integer(dat$year)

#[x] Create a table using code of the DJIA returns that matches the table shown below (“spread” the data)
dat %>% 
  filter(month_end == "June" | month_end == "December") %>% 
  filter(!is.na(value)) %>% 
  pivot_wider(id_cols = year, names_from = month_end, values_from = value) %>% 
  ggplot(aes(x = year, y = June, color = "red"), color = June) +
  geom_line() +
  geom_line(aes(y = December, color = "blue")) +
  labs(title = "Mid-Year vs Year-End", x = "Value", y = "Year",
       color = "Month") +
  theme_bw()
#[x] Include your plots in an .Rmd file with short paragraph describing your plots. Make sure to display the tidyr code in your file
#[x] Push your .Rmd, .md, and .html to your GitHub repo




