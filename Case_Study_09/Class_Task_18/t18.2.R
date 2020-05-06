pacman::p_load(tidyverse, timetk, tidyquant, lubridate, dygraphs)

# Build the library(dygraphs) plot that shows the 
# Kroger (KR) stock price performance over 5 years.
# Imaging that you invested $10,000 in kroger about two years ago on April 5th. 
# Make a graph with dygraph that shows performance dyRebased() to $10,000.
# Annotate the graphic with a note of the reason at two or more time points, or intervals, where the price had significant shifts.

tday <- ymd("2020-03-10")
yday <- tday - years(5)

two years ago on April 5th.
dat <- tq_get("KR", get = "stock.prices", from =  yday, to = tday)
dat_tk <- dat %>% tk_xts(select = adjusted)
dat_tk_candle <- dat %>% tk_xts(select = c(close, open, high, low))

# stock price over five years
dygraph(dat_tk) 

# 10k two years ago
dat %>% 
  filter(date > ymd("2018-01-01")) %>%
  tk_xts(select = adjusted) %>%
  dygraph() %>%
  dyRebase(value = 10000)



dygraph(dat_tk_candle) %>%
  dyCandlestick() %>%
  dyRangeSelector()