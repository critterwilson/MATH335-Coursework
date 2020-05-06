pacman::p_load(tidyverse, Lahman, blscrapeR)

dat_school <- Lahman::Schools %>% as_tibble()
dat_people <- Lahman::People %>% as_tibble()

# finding utah people and college names
dat_col <- Lahman::CollegePlaying %>% as_tibble() %>%
  left_join(dat_school) %>%
  filter(state == "UT") %>%
  group_by(playerID) %>%
  filter(yearID == max(yearID)) %>% 
  ungroup() %>%
  select(-yearID)

ut_players <- pull(dat_col, playerID)

### people stuff
dat_sal <- Lahman::Salaries %>% as_tibble() %>%
  left_join(dat_people) %>%
  select(playerID, yearID, salary, nameGiven, nameFirst, nameLast) %>%
  filter(playerID %in% ut_players)

# Now we want to know the college for each professional player

dat <- dat_sal %>%
  left_join(dat_col) %>%
  arrange(playerID, yearID) %>%
  group_by(playerID) %>%
  mutate(year_sequence = 1:n(), 
         byu = ifelse(schoolID == "byu", "BYU", "Other Utah")) 

### Now the plot

## one try
dat %>%
  ggplot(aes(x = yearID, y = salary, color = schoolID)) +
  geom_point() +
  geom_line(aes(group = playerID))

dat %>%
  ggplot(aes(x = year_sequence, y = salary, color = byu)) +
  geom_point() +
  geom_line(aes(group = playerID))

### boxplot idea


dat %>%
  ggplot(aes(x = nameGiven, y = salary)) +
  geom_boxplot(fill = NA) +
  geom_jitter(height = 0) +
  facet_wrap(~byu, scales = "free_x") +
  scale_y_continuous(labels = scales::dollar) +
  theme_bw() + 
  theme(axis.text.x = element_text(angle = 30, vjust =1 , hjust = 1)) +
  labs(x = "Player", y = "Salary (non-adjusted)\n", title = "BYU Wins!")
