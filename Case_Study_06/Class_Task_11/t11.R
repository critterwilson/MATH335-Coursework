pacman::p_load(tidyverse, stringr, RVerbalExpressions)

# read in files
rletter <- read_lines(url("https://byuistats.github.io/M335/data/randomletters.txt"))

rletter %>%   
  str_split("") %>% 
  unlist() %>% 
  .[c(1, seq(1700, str_count(rletter), by = 1700))] %>% 
  str_c(collapse = "")

rnumber <- read_lines(url("https://byuistats.github.io/M335/data/randomletters_wnumbers.txt"))
  
extra_numbers <- rnumber %>% 
  str_extract_all("[:digit:]+") %>% 
  unlist() %>% 
  parse_number()

letters[extra_numbers] %>% 
  str_c(collapse = "")

rnumber %>%
  str_replace(" ", "") %>%
  str_replace("\\.", "") %>%
  str_extract_all("[aeiou]{7}")
# str_count("[aeiou]{7}")

