library(nycflights13)
library(tidyverse)
View(flights)
# [x] Take notes on your reading of the specified ‘R for Data Science’
#        chapter in a ‘.R’ script or ‘.md’ file.
##############################
# FILTER
##############################
# filter() allows subsetting based on conditions.
#   First argument is dataframe, subsequent are logical arguments
#   Filter() returns a new dataframe; use <- : to overwrite original dataframe
filter(flights, month == 1, day == 1)
jan1 <- filter(flights, month == 1, day == 1)
# put "()" around a line to print automatically)
(jan1 <- filter(flights, month == 1, day == 1))

# Comparative operators aren't always perfect
sqrt(2) ^ 2 == 2
#> [1] FALSE
1 / 49 * 49 == 1
#> [1] FALSE
# ... Use near() instead of ==
near(sqrt(2) ^ 2,  2)
#> [1] TRUE
near(1 / 49 * 49, 1)
#> [1] TRUE

# Using comparative operators to find Nov and Dec flights
#   Don't use && or || here, we will find out later
filter(flights, month == 11 | month == 12)
# This is a shorthand
#   %in% selects every row where x is one of the values in y
nov_dec <- filter(flights, month %in% c(11, 12))

# Don't forget DeMorgan's law
filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)

# NA's don't compare
#   NA means "I don't know"
#   use is.na(x) to determine if something is missing
5 > NA
#> [1] NA

# filter() excludes NA and flase, to include na, explicity do so
filter(df, is.na(x) | x > 1)

##############################
# ARRANGE
##############################
# Like filter() but changes the order
arrange(flights, year, month, day)

# use desc() to reorder by a column in descending order
#   Missing values are always stored at the end
arrange(flights, desc(dep_delay))

##############################
# SELECT
##############################
# Allows us to select certain columns from a dataframe
select(flights, year, month, day)
# We can select all columns between two columns, too
select(flights, year:day)
# Select all columns except those between two columns
select(flights, -(year:day))
# Helper functions:
starts_with("abc") 
ends_with("xyz")
contains("ijk")
matches("(.)\\1") # Regular Expression
num_range("x", 1:3)
# Use rename() to rename flights because select() doesn't always work well
rename(flights, tail_num = tailnum)
# everything helps us move columns to start of dataframe
select(flights, time_hour, air_time, everything())

##############################
# MUTATE
##############################
# mutate() adds columns at end of df that are functions of other columns
flights_sml <- select(flights, 
                      year:day, 
                      ends_with("delay"), 
                      distance, 
                      air_time
)
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60
)
# You can then use those new columns
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)
#transmute() keeps only the new variables
transmute(flights,
          gain = dep_delay - arr_delay,
          hours = air_time / 60,
          gain_per_hour = gain / hours
)
# you can use arithmatic operators, logs,
# ...modular arithmatic...
transmute(flights,
          dep_time,
          hour = dep_time %/% 100, # intenger division
          minute = dep_time %% 100 # remainder
)
# ...offsets...
(x <- 1:10)
#>  [1]  1  2  3  4  5  6  7  8  9 10
lag(x)
#>  [1] NA  1  2  3  4  5  6  7  8  9
lead(x)
#>  [1]  2  3  4  5  6  7  8  9 10 NA
# ...cumulative and rolling aggregates
#   cumsum(), cumprod(), cummin(), cummax(); and dplyr provides cummean()
x
#>  [1]  1  2  3  4  5  6  7  8  9 10
cumsum(x)
#>  [1]  1  3  6 10 15 21 28 36 45 55
cummean(x)
#>  [1] 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0 5.5
# ...logical comparisons...
# ...Ranking...
y <- c(1, 2, 2, NA, 3, 4)
min_rank(y)
#> [1]  1  2  2 NA  4  5
min_rank(desc(y))
#> [1]  5  3  3 NA  2  1
row_number(y)
#> [1]  1  2  3 NA  4  5
dense_rank(y)
#> [1]  1  2  2 NA  3  4
percent_rank(y)
#> [1] 0.00 0.25 0.25   NA 0.75 1.00
cume_dist(y)
#> [1] 0.2 0.6 0.6  NA 0.8 1.0

##############################
# SUMMARISE
##############################
# collapses a dataframe into a single row
summarise(flights, delay = mean(dep_delay, na.rm = TRUE)) #na.rm removes missing values
# doesn't work super well unless used with group_by()
by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))

# Imagine we want to explore relationship between distance and delay
by_dest <- group_by(flights, dest)
delay <- summarise(by_dest,
                   count = n(),
                   dist = mean(distance, na.rm = TRUE),
                   delay = mean(arr_delay, na.rm = TRUE)
)
delay <- filter(delay, count > 20, dest != "HNL")

# It looks like delays increase with distance up to ~750 miles 
# and then decrease. Maybe as flights get longer there's more 
# ability to make up delays in the air?
ggplot(data = delay, mapping = aes(x = dist, y = delay)) +
  geom_point(aes(size = count), alpha = 1/3) +
  geom_smooth(se = FALSE)
#> `geom_smooth()` using method = 'loess' and formula 'y ~ x'

# The above is too complicated, tackle it with the pipe %>%
delays <- flights %>% 
  group_by(dest) %>% 
  summarise(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  ) %>% 
  filter(count > 20, dest != "HNL")

# [x] Develop a few novel questions that data can answer
#       Does America acutally hate trump?
#       Can we prove that the media is skewed?
#       Why is mental health so prevalent today?
#       
#   [x] Get feedback from 5-10 people on their interest in your questions and summarize this feedback
#         A lot of people were very interested in the concept of proving false media. Everyone
#         also showed interested in the value of finding a cause behind mental health as they 
#         all had personal experiences dealing with it. I had a
#         surprising interst in the Trump question- but they were worried it was too touchy.
#   
#   [x] Find other examples of people addressing your question
#         MEDIA BIAS
#         https://www.allsides.com/media-bias/media-bias-rating-methods
#         * unrelated: Awesome article: https://benjaminstudebaker.com/2015/11/16/why-the-media-pays-more-attention-to-some-tragedies-than-others/
#         https://dailybruin.com/2019/05/09/the-quad-media-coverage-skewed-by-biases-of-journalists-american-society/
#         
#         TRUMP
#         https://news.gallup.com/poll/284156/trump-job-approval-personal-best.aspx
#         https://morningconsult.com/tracking-trump-2/
#
#         MENTAL HEALTH
#         https://www.psychologytoday.com/us/blog/our-changing-culture/201410/why-so-many-people-are-stressed-and-depressed
#   [ ] Present your question to a data scientist to get feedback on the quality of the question and if it can be addressed in 2-months.
# [x] Create one .rmd file that has your report
#   [x] Have a section for each question
# [x] Be prepared to discuss your results in the upcoming class


