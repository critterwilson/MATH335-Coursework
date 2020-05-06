#[ ] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder
"read_csv() = comma separated files
 read_csv2() = semi-color
 read_tsv() = tab separated
 read_delim() = any delimeter
 read_fwf() = reads fixed width files
 read_log() = reads apache style logs"

#[x] Use the appropriate functions in library(readr), library(haven), library(readxl) to read in the five files found on GitHub
pacman::p_load(tidyverse, haven, readxl, downloader)
#   [x] Use read_rds(url("WEBLOCATION.rds")) to download and read the .rds file type
dat1 <- read_rds(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.RDS"))
View(dat1)
dat2 <- read_csv(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.csv"))
View(dat2)
dat3 <- read_dta(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.dta"))
View(dat3)
dat4 <- read_sav(url("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.sav"))
View(dat4)
#   [x] Use the library(downloader) R package and use the download(mode = "wb") function to download the xlsx data as read_xlsx() cannot read files from the web path
#   [x] Use tempfile() function to download and save the file.
tmp <- tempfile()
download("https://github.com/byuistats/data/raw/master/Dart_Expert_Dow_6month_anova/Dart_Expert_Dow_6month_anova.xlsx", tmp, mode = "wb")
dat5 <- read_xlsx(tmp)
View(dat5)
#[x] Check that all five files you have imported into R are in fact the same with all.equal()
all.equal(dat1, dat2)
all.equal(dat2, dat3)
all.equal(dat3, dat4)
all.equal(dat4, dat5)
#[x] Use one of the files to make a graphic showing the performance of the Dart, DJIA, and Pro stock selections
#   [x] Include a boxplot, the jittered returns, and the average return in your graphic
avg <- dat1 %>% 
  group_by(variable) %>% 
  summarise(avg = mean(value))
View(avg)

plot <- dat1 %>% 
  ggplot(aes(x = variable, y = value, fill = variable)) +
  geom_jitter() +
  geom_boxplot(alpha = 0.7) +
  theme(axis.text.x = element_text(angle = 60, hjust = 1)) +
  theme_bw() +
  labs(title = "DOW Returns for DARTS, DIJA, and PROS",
       x = "Dow Variable", y = "Return Value") +
  stat_summary(fun.y = "mean", colour = "red", geom = "point", 
               shape = 18, size = 5, show.legend = FALSE) +
  annotate("text", x = 1, y = 7.5, label = paste("Avg:", avg$avg[1]), 
           color = "black", fontface = "bold") +
  annotate("text", x = 2, y = 10, label = paste("Avg:", avg$avg[2]), 
           color = "black", fontface = "bold") +
  annotate("text", x = 3, y = 14, label = paste("Avg:", avg$avg[3]), 
           color = "black", fontface = "bold") +
  theme(legend.position = "none")

my.dir <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(my.dir)
ggsave("t9.png", plot = last_plot(), width = 8, units = c("in"))#[ ] Save your .R script and your image to your repository and be ready to share your code that built your graphic in class
#[x] Schedule a mid-semester 15-minute interview to discuss your progress in the class.