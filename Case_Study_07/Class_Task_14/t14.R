pacman::p_load(tidyverse, stringr, stringi, rio, ggridges)

dat <- import("http://scriptures.nephi.org/downloads/lds-scriptures.csv.zip")

pull(dat, scripture_text) %>% .[c(1,2)]
pull(dat, scripture_text) %>% .[c(1,2)] %>% stri_stats_latex()

# What is the average verse length (number of words) in the New Testament compared to the Book of Mormon?
dat_bm_nt <- dat %>% 
  filter(volume_short_title %in% c("NT", "BoM")) %>% 
  group_by(volume_short_title, verse_short_title) %>% 
  mutate(count = stri_stats_latex(scripture_text)["Words"]) %>% 
  ungroup() %>% 
  select(volume_short_title, verse_short_title, count, scripture_text, book_title)

dat_bm_nt %>% 
  group_by(volume_short_title) %>% 
  summarise(average = mean(count)) %>% 
  knitr:kable()


dat_bm_nt %>% 
  ggplot(aes(x = count)) +
  geom_histogram(bins = 45, color = "white") +
  facet_wrap(~volume_short_title) +
  theme_bw() +
  labs(x = "Number of Words in Verse", y = "Number of Verses w/ Corresponding \nWord Count")

# How often is the word Jesus in the New Testament compared to the Book of Mormon?
dat_bm_nt %>% 
  mutate(jesus_count = str_count(scripture_text, "Jesus")) %>% 
  group_by(volume_short_title) %>% 
  summarize(count = sum(jesus_count))

dat_bm_nt %>% 
  mutate(jesus_count = str_count(scripture_text, "Jesus"))%>% 
  ggplot(aes(x = jesus_count)) +
  geom_histogram(bins = 45, color = "white") +
  facet_wrap(~volume_short_title) +
  theme_bw() +
  coord_cartesian(ylim = c(0, 25)) +
  labs(x = "Number of Mentions of \"Jesus\"", y = "Number of Verses w/\nCorresponding Count")
  
# How does the word count distribution by verse look for each book in the Book of Mormon?
dat_bm_nt %>% 
  filter(volume_short_title == "BoM") %>% 
  ggplot(aes(y = count, x = fct_inorder(book_title) %>% fct_rev())) +
  geom_jitter(height = 0, width = .25, color = "darkgrey") +
  geom_boxplot(outlier.color = NA, fill = NA) +
  theme_bw() +
  labs(x = "Book in BoM", y = "Word Count") +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))

dat_bm_nt %>% 
  filter(volume_short_title == "BoM") %>% 
  ggplot(aes(x = count, y = fct_inorder(book_title) %>% fct_rev())) +
  geom_density_ridges() +
  theme_bw() +
  labs(x = "Book in BoM", y = "Word Count") +
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  scale_x_continuous(breaks = seq(0, 150, by = 20)) +
  coord_cartesian(xlim = c(0, 100))
  



