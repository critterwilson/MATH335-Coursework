##### Kroger Data ####

####

pacman::p_load(tidyverse, timetk, tidyquant, lubridate, dygraphs)


kr <- tq_get(c("KR", "T"), from = "2012-01-01", to = "2018-10-10") %>% 
  filter(symbol == "KR")  %>%
  select(symbol, close, date) %>% 
  spread(key = symbol, value = close)

kr.xts <- kr %>% 
  tk_xts(select = KR, date_var = date)

dygraph(kr.xts, main = "None", group = "stock") %>%
  dyRangeSelector()

dygraph(kr.xts, main = "None", group = "stock") %>%
  dyRangeSelector() %>% 
  dyRoller(rollPeriod = 30)

# 15th of June 2017 kroger
# https://www.forbes.com/sites/maggiemcgrath/2017/06/15/kroger-sinks-16-as-first-quarter-sales-fall-and-forward-guidance-is-slashed/#7a4876d726d4
# "2017-08-24"
# https://www.cnbc.com/2017/08/24/amazons-new-whole-foods-discounts-wipe-out-10-billion-in-market-value-from-grocery-sellers.html

dygraph(kr.xts, main = "Percent", group = "stock") %>%
  dyRebase(percent = TRUE) %>%
  dyRangeSelector() 

# Imaging that you invested $10,000 in kroger about two years ago on April 5th.  Make a graph with dygraph that shows performance `dyRebased()` to $10,000.
kr %>%
  filter(date > ymd("2016-01-01")) %>%
  tk_xts(select = KR, date_var = date) %>%
  dygraph(main = "1,000 Investment", group = "stock") %>%
  dyRebase(value = 10000) %>%
  dyRangeSelector() %>%
  dyAnnotation("2017-06-15", text = "Walmart",  tooltip = "Walmart Competition") %>%
  dyAnnotation("2017-08-24", text = "Amazon",  tooltip = "Amazon Buys Whole Foods"
s               
               