pacman::p_load(tidyverse, stringr, RVerbalExpressions)

# read in files
rletter <- read_lines(url("https://byuistats.github.io/M335/data/randomletters.txt"))

every1700th <- function(text) {
  text %>%   
    str_split("") %>% 
    unlist() %>% 
    .[c(1, seq(1700, str_count(rletter), by = 1700))] %>% 
    str_c(collapse = "")
}

every1700th(rletter)

rnumber <- read_lines(url("https://byuistats.github.io/M335/data/randomletters_wnumbers.txt"))
  
extra_numbers <- function(text){
  extra <- text %>% 
    str_extract_all("[:digit:]+") %>% 
    unlist() %>% 
    parse_number()
  
  letters[extra] %>% 
    str_c(collapse = "")
}

extra_numbers(rnumber)


vowels <- function(text) {
  text %>%
    str_replace(" ", "") %>%
    str_replace("\\.", "") %>%
    str_extract_all("[aeiou]{7}")
}

vowels(rletter)
