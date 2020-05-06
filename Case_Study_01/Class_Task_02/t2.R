##################################################################################
# [x] Make an R script that has the code examples from Chapter 4 of R for data 
#       science and Chapter 1 of Modern Drive
# [x] Write a short comment in your R script that explains 1-2 new concepts you 
#       learned about R
##################################################################################
# Wokrflow: Basics
## What I learned: The filter command is quite amazing. The fact that I can sort a dataset
##  with only one line is compelling and I know I will use it often. 
1 / 200 * 30
(59 + 73 + 2) / 3
sin(pi / 2)
x <- 3 * 4
x
this_is_a_really_long_name <- 2.5
r_rocks <- 2 ^ 3
r_rock
R_rocks
seq(1, 10)
x <- "hello world"
y <- seq(1, 10, length.out = 5)
(y <- seq(1, 10, length.out = 5))

my_variable <- 10
my_variable

library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
filter(mpg, cyl == 8)

filter(diamond, carat > 3)

# Getting Started With Data in R
## What I learned: The ability to view a dataframe through R Studio is insanely helpful.
##  In Python, I only worked in the console and that's a pain at times, it's nice to have
##  an interactive file that I can view my dataframe in. 
library(nycflights13)
library(dplyr)
library(knitr)

flights
View(flights)
glimpse(flights)
kable(airlines)
airlines$name

glimpse(airports)
##################################################################################
# [x] Improve the 3D barchart visuallization using R (see below) to provide a 
#       graphic that answers the question, What is the growth over time trend 
#       by department of RC&W attendance?
#   [x] Practice using the help files for geom_line and geom_col and the examples 
#          at the end of the help files (see readings)
#   [x] Save your code in your R script and be prepared to share your code and 
#          image in class
##################################################################################
# Starting plot
library(tidyverse)
dat <- read_csv("https://byuistats.github.io/M335/data/rcw.csv", 
                col_types = cols(Semester_Date = col_date(format = "%m/%d/%y"), 
                                 Semester = col_factor(levels = c("Winter", "Spring", "Fall"))))

View(dat)
dat %>%
  ggplot(aes(x = Semester_Date, y = Count, color = Department)) + 
  geom_line() + geom_point() + ggtitle("R&CW Attendance") +
  ylab("Num Students Attended") + xlab("Semester") +
  scale_x_date(date_breaks = "3 months", date_labels = "%d %b")

# dat %>%
#   # group_by(Year, Department) %>%
#   # summarise(total = sum(Count), mean = mean(Count), sd = sd(Count)) %>%
#   # ungroup() %>%
#   ggplot(aes(Department, Count, fill = Semester)) +
#   geom_col() +
#   facet_wrap(~Year)
##################################################################################
#[x] Create a GitHub account and post your github username on the google docs sheet
##################################################################################
# username:critterwilson

##################################################################################
#[x] Post a professional picture to your Github, LinkedIn, and Slack icons. Go to 
#      the BYU-I LinkedIn Photobooth if you don’t already have one.
#[x] Attend Data Science Society on the second Wednesday of the semester.
##################################################################################