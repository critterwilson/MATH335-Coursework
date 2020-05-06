"
[x] Take notes on your reading of the new R package in the README.md or in a ‘.R’ script in the class task folder
[x] List the three stocks that your friend picks and the three that you pick
[x] Pull the price performance data using library(tidyquant) or library(quantmod)
[x] Build a visualization that shows who is winning each day of the competition
[x] In the previous visualization or with another visualization show which stock is helping the winner of the competition
[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and the choices you made in the data presentation
[x] Compile your .md and .html file into your git repository
"

pacman::p_load(tidyverse, tidyquant, lubridate)

AAPL <- tq_get("AAPL", get = "stock.prices", from = " 2019-10-01") %>% 
  mutate(user = "ME")
AMZN <- tq_get("AMZN", get = "stock.prices", from = " 2019-10-01") %>% 
  mutate(user = "ME")
PG <- tq_get("PG", get = "stock.prices", from = " 2019-10-01") %>% 
  mutate(user = "ME")

DIS <- tq_get("DIS", get = "stock.prices", from = " 2019-10-01") %>% 
  mutate(user = "FRIEND")
NFLX <- tq_get("NFLX", get = "stock.prices", from = " 2019-10-01") %>% 
  mutate(user = "FRIEND")
GOOGL <- tq_get("GOOGL", get = "stock.prices", from = " 2019-10-01") %>% 
  mutate(user = "FRIEND")

all_stocks <- bind_rows(AAPL, AMZN, GOOGL, DIS, NFLX, PG)

all_stocks %>% 
  group_by(user, date) %>% 
  summarize(close = sum(close)) %>% 
  ggplot(aes(x = date, y = close, color = user)) +
  geom_line() +
  theme_bw() +
  labs(x = "Date", y = "Closing Value",
       title = "Sum of All Stocks by Date",
       color = "User") +
  scale_color_manual(values = c("#D16103", "#4E84C4"),
                     labels = c("Justin", "Myself"))

all_stocks %>% 
  group_by(user, date, symbol) %>% 
  summarize(close = sum(close)) %>%
  ggplot(aes(x = date, y = close, color = symbol)) +
  geom_line() +
  theme_bw() +
  labs(x = "Date", y = "Closing Value",
       title = "Closing Stock Values by Date",
       color = "Stock") +
  scale_color_brewer(palette = "Dark2")
  
"
My first graph sums up all of the closing values of the stocks on each day. I chose 
closing values because I felt that those provided more insight into the the value than any
of the other value options. 

On the second value, I did the same as the first but provided the stock instead of sums of all of them.
" 

