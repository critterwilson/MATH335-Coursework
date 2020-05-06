##Data Science Leader (A & B+ level)
[x] Complete at least 18 class task on time.

[x] Complete at least 8 case studies on time.

[x] Be the team lead of the Tuesday case study presentation at least 3 times.

[ ] Complete all tasks, all case studies, and a semester project (see syllabus for more details)

##Data Science Supporter (B level)
[x] Be the team lead of the Tuesday case study presentation at least 2 times.

[x] Complete at least 7 class task on time.

[x] Complete at least 4 case studies on time.


##Portfolio
Case study 13 provides the checklist items for your portfolio. This portfolio package will be the basis of your final grade.

[x] Join the BYUI LinkedIn, GitHub, Slack groups and make sure your picture is placed in your profile.

[ ] A cover letter to me stating the key concepts and techniques that you learned during our projects and your goals to continue learning in this area - include a grade request that represents your knowledge and task completion

[ ] A current resume that includes the skills you have learned during our projects which you would submit to any future jobs

[ ] A semester task form that records your completed tasks during the semester (electronic)

[ ] Semester project submission on GitHub

[ ] Submit this material electronically to your repository and schedule a visit with me

#Weekly Case Studies
##Case Study 1
[x] Find 4-5 examples of data-driven answers and write a one-paragraph review of each.

[x] List 2-3 items that are unique/good

[x] Identify 1 issue with the each example

[x] Create an .Rmd file in R-Studio

[x] Title it Case Study 1 in the YAML

[x] Include links to the visualization post you found

[x] Write a one paragraph critique of each visualization

[x] Add the R code below to your .Rmd file

[x] Knit the file to .html and keep the .md file as well

[x] Create an account on slack.

[x] Find the text on the slack webpage that says ‘If you have an @byui.edu email address, you can create an account.’ and use that link.

[x] You might create a catchy username that matches your other social media usernames and that can follow you for your career. Mine is hathawayj.

[x] Upload your intermediary .md file to the general channel in our Slack group

##Case Study 2
[x] Recreate the two graphics shown below using gapminder dataset from library(gapminder) (get them to match as closely as you can)

[x] Use library(tidyverse) to load ggplot2 and dplyr and the theme_bw() to duplicate the first plot

[x] Use scale_y_continuous(trans = "sqrt") to get the correct scale on the y-axis.

[x] Build weighted average data set using weighted.mean() and GDP with summarise() and group_by() that will be the black 
continent average line on the second plot

[x] Use theme_bw() to duplicate the second plot. You will need to use the new data to make the black lines and dots showing the continent average.

[x] Use ggsave() and save each plot as a .png with a width of 15 inches

[x] Build an Rmd file that has the following features

[x] The title is the same as listed in the task

[x] You have two sections – 1) Background, 2) Images

[x] In the background section write a few sentences about what you learned making these plots

[x] In the Image section have two chunks. One for each image

[x] Save your .Rmd, .md, and the two .png’s of the plots into your git repository.

##Case Study 3
[x] Address at least two of the three questions in the background description (if you have time try to tackle all three)

[x] Make sure to include one or more visualization that shows the complexity of the data.

[x] Create one .rmd file that has your report

[x] Have a section for each question

[x] Make sure your code is in the report but defaults to hidden

[x] Write an introduction section that describes your results

[x] make a plot of the data to show the answer to the specific question

[x] Push your .Rmd, .md, and .html to your GitHub repo

[x] Be prepared to discuss your analysis in the upcoming class

[x] Complete the recommended reading on posting issues.

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 4
[x] Provide a brief summary of the FiveThirtyEight article

[x] Create one plot that provides similar insight to their visualization in the article. It does not have to look like theirs.

[x] Write a short paragraph summarizing their article

[x] Address the client’s need for emphasis areas of their commercials for different seasons of the year.

[x] Provide plots that help them know the different potential groups (variables) they could address in different seasons (2-4 visualizations seem necessary)

[x] Write a short paragraph describing each image

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 5
[x] Use the correct functions from library(haven) , library(readr), and library(readxl) to load the 6 data sets listed here

[x] Tidy the Worldwide estimates .xlsx file

[x] Make sure the file is in long format with year as a column. See here for an example of the final format.

[x] Use the separate() and mutate() functions to create a decade column.

[x] Import the other five datasets into R and combine them into one tidy dataset.

[x] This dataset should have the following columns - birth_year, height.cm, height.in, and study_id

[x] The BLS wage data does not have birth information. Let’s assume it is mid-twentieth century and use 1950.

[x] See the reading of Task 8 for how to read in dbf files.

[x] Save the two tidy datasets to your repository - The world country estimates and the row-combined individual measurements.

[x] Make a plot with decade on the x-axis and height in inches on the y-axis with the points from Germany highlighted based on the data from the .xlsx file.

[x] Make a small-multiples plot of the five studies to examine the question of height distribution across centuries

[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and how those graphics answer the driving question

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 6
[x] Load the R package from GitHub devtools::install_github("hathawayj/buildings") and find out what data is in the package

[x] Construction value is related to population in the area. Join the climate_zone_fips data to the buildings0809 data using the two FIPS columns for state and county.

[x] After filtering to Food_Beverage_Service group of buildings in the Type variable, use the ProjectTitle column to create new subgroups from the groupings in the code section below and the restaurant names in restaurants.

[x] Restaurants that are not assigned using the names and keywords that are over 4000 square feet should be grouped into Full Service Restaurants and be in Quick Service Restaurants if they are under 4000 square feet and new construction.

[x] Make sure your text strings your are matching on are as standardized as possible

[x] leverage functions like str_to_lower() and str_trim() to get all the words in a standardized form

[x] you could use the case_when() function to create the subgroups.

[x] Create an .Rmd file with 2-3 paragraphs summarizing your 3-4 graphics that inform the client questions

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 7
[x] Get the scripture and savior name data into R

[x] Download the data from http://scriptures.nephi.org/downloads/lds-scriptures.csv.zip

[x] Read in the .csv file that was in the zip file and examine the structure of the data

[x] Use read_rds(gzcon(url("https://byuistats.github.io/M335/data/BoM_SaviorNames.rds"))) to download and load the Savior names table into R

[x] Use the list of Savior names and the Book of Mormon verses to figure out the average number of words between references to the Savior

[x] Find each instance of a Savior name in the Book of Mormon

[x] Split on those instances and then count the number of words between each instance

[x] Use the example code below for some hints on how to tackle this task

[x] Report the average number of words between each Savior name

[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphic that shows how the distance between Savior names is distributed across the Book of Mormon

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 8
[x] Read in the data from https://byuistats.github.io/M335/data/sales.csv and format it for visualization and analysis

[x] The data are for businesses in the mountain time zone make sure you read in times correctly

[x] This is point of sale (pos) data, so you will need to use library(lubridate) to create the correct time aggregations

[x] Check the data for any inaccuracies

[x] Help your boss understand which business is the best investment through visualizations

[x] Provide an understanding and recommendation for hours of operation

[x] We don’t have employee numbers, but sales traffic can help. Provide some visualizations on customer traffic

[x] Provide a final comparison of the six companies and a final recommendation

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 9
[x] For your coding development use these tickers - tickers_today <- c("CXW", "F", "GM", "JCP", "KR", "WDC", "NKE","T", "WDAY", "WFC", "WMT")

[x] Use library(dygraphs) to build interactive visualizations of the stock performances over the last 5 years.

[x] Make a library(ggplot2) graphic that helps you build a solid question around how an investor would use volume in their trading strategy

[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and the choices you made in your visualization

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

[x] Publish your case study to Rstudio Connect at shiny.byui.edu
Case Study 10

[x] Read in the permits data from devtools::install_github("hathawayj/buildings") and tidy it for spatial visualization needs

[x] You will need to merge it with the spatial data so it will require some column mutation

[x] Use the library(USAboundaries) package to get the spatial maps for the US

[x] You will need to use the FIPS numbers to merge with the permit data

[x] Create state level totals from the county level data to show general patterns across the US over time

[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and the choices you made in your visualization to address the reporter’s needs

[x] Compile your .md and .html file into your git repository

[x] Find two other student’s compiled files in their repository and provide feedback using the issues feature in GitHub (If they already have three issues find a different student to critique)

[x] Address 1-2 of the issues posted on your project and push the updates to GitHub

##Case Study 11
[ ] Choose an option of recreating or using new data.

[ ] Recreate CS 10 tasks with leaflet

[ ] Find your own spatial data that interests you and build a visualization

[ ] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and the choices you made in your visualization

[ ] Compile your .md and .html file into your git repository

[ ] Publish your case study to Rstudio Connect at shiny.byui.edu
Case Study 12

[ ] Finalize first draft of your project analysis

[ ] Choose your flavor of .Rmd for your presentation

[ ] Build a stand-alone analysis that helps a reader answer the question at hand with that available data

[ ] Present your visualization based analysis that addresses your question

[ ] Present your analysis to your roommates (or spouse) and update your presentation based on the feedback

[ ] Get feedback from 2-3 fellow classmates on your presentation and update it based on their feedback

[ ] Present your draft presentation to a data scientist to review for clarity

[ ] Present your work in class, at a society meeting, the research and creative works conference, or as a blog post online

##Case Study 13
[ ] Join the BYUI LinkedIn, GitHub, Slack groups and make sure your picture is placed in your profile.

[ ] A cover letter to me stating the key concepts and techniques that you learned during our projects and your goals to continue learning in this area - include a grade request that represents your knowledge and task completion

[ ] A current resume that includes the skills you have learned during our projects which you would submit to any future jobs

[ ] A semester task form that records your completed tasks during the semester (electronic)

[ ] Semester project submission on GitHub

[ ] Submit this material electronically to your repository and schedule a visit with me

#Daily Class Tasks
##Tasks 1 - 12
##Class Task 1
[x] Read the course syllabus and make sure you understand our class routine and grading

[x] Get R and R-Studio running on your computer

[x] Fix your settings in R-Studio to use the code diagnostics
[x] Watch John Rauser Presentation

[x] Use the following google spreadsheet to input your three favorite segments of the video. Use your course standardized name lastname firstletterfirstname – For example mine is hathawayj.

[x] Read the material about learning online and be prepared for a conversation in class

##Class Task 2
[x] Make an R script that has the code examples from Chapter 4 of R for data science and Chapter 1 of Modern Drive

[x] Write a short comment in your R script that explains 1-2 new concepts you learned about R

[x] Improve the 3D barchart visuallization using R (see below) to provide a graphic that answers the question, What is the growth over time trend by department of RC&W attendance?

[x] Practice using the help files for geom_line and geom_col and the examples at the end of the help files (see readings)

[x] Save your code in your R script and be prepared to share your code and image in class

[x] Create a GitHub account and post your github username on the google docs sheet

[x] Post a professional picture to your Github, LinkedIn, and Slack icons. Go to the BYU-I LinkedIn Photobooth if you don’t already have one.

[x] Attend Data Science Society on the second Wednesday of the semester.

##Class Task 3
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in a ‘.R’ script or ‘.md’ file.

[x] Develop a few novel questions that data can answer

[x] Get feedback from 5-10 people on their interest in your questions and summarize this feedback

[x] Find other examples of people addressing your question

[x] Present your question to a data scientist to get feedback on the quality of the question and if it can be addressed in 2-months.

[x] Create one .rmd file that has your report

[x] Have a section for each question

[x] Be prepared to discuss your results in the upcoming class

##Class Task 4
[x] Install git on your computer

[x] Make sure your GitHub account is registered

[x] Work through readings on git and github

[x] Make sure git works in R-Studio

[x] Update your README.md in your repository (you will need to give me time to create your repo after you post your username)

[x] Type one or two sentences that describe you

[x] Make sure you pull and push

[x] Get your previous class tasks and case studies into the appropriate folders and add, commit, push with git

##Class Task 5
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Review the Our World in Data webpage and find a graphic that interests you.

[x] Recreate that graphic in R after downloading the data from their website

[x] Explore the world data on child_mortality and create an interesting graphic that highlights this dataset.

[x] Use devtools::install_github("drsimonj/ourworldindata") to get a larger dataset on child_mortality. This will require install.packages("devtools").

[x] Create a graphic that you could use in a presentation to summarize world child mortality

[x] Include your plots in an .Rmd file with short paragraph describing your plots

[x] Push your .Rmd, .md, and .html to your GitHub repo

##Class Task 6
[x] Find an insightfull relationship between two of the variables (columns) and display that relationship in a table or graphic

[x] Provide a distributional summary of the relevant variable in nycflights13::flights

[x] Build bivariate summaries of the relevant variables

[x] document the iterative script that built to your insightfull relationship

[x] Create an .R script that has your data visualization development with 1-2 commented paragraphs summarizing your 2 finalized graphics and the choices you made in the data presentation

[x] Save your .png images of each your final graphics and push all your work to your repository.

##Class Task 7
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Review the “What do people do with new” data link above and write one quote that resonated with you in your .Rmd file.

[x] Build an interactive document that has links to sources with a description of the quality of each

[x] Find 3-5 potential data sources (that are free) and document some information about the source

[x] Build an R script that reads in, formats, and visualizes the data using the principles of exploratory analysis

[x] Write a short summary of the read in process and some coding secrets you learned

[x] Include 2-3 quick visualizations that you used to check the quality of your data

[x] Summarize the limitations of your final compiled data in addressing your original question

[x] After formatting your data identify any follow on or alternate questions that you could use for your project

##Class Task 8
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Explore the world data on financing_healthcare and create an interesting graphic that highlights this dataset in relation to child mortality.

[x] Use devtools::install_github("drsimonj/ourworldindata") to get a larger dataset on financing_healthcare

[x] Create a graphic that you could use in a final presentation to summarize world child mortality (child_mort column)

[x] Push your .Rmd, .md, and .html to your GitHub repo

##Class Task 9
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Use the appropriate functions in library(readr), library(haven), library(readxl) to read in the five files found on GitHub

[x] Use read_rds(url("WEBLOCATION.rds")) to download and read the .rds file type

[x] Use the library(downloader) R package and use the download(mode = "wb") function to download the xlsx data as read_xlsx() cannot read files from the web path

[x] Use tempfile() function to download and save the file.

[x] Check that all five files you have imported into R are in fact the same with all.equal()

[x] Use one of the files to make a graphic showing the performance of the Dart, DJIA, and Pro stock selections

[x] Include a boxplot, the jittered returns, and the average return in your graphic

[x] Save your .R script and your image to your repository and be ready to share your code that built your graphic in class

[x] Schedule a mid-semester 15-minute interview to discuss your progress in the class.

##Class Task 10
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Import the Dart_Expert_Dow_6month_anova data from GitHub (see details in previous task)

[x] The contestant_period column is not “tidy” we want to create a month_end and year_end column from the information it contains

[x] Save your “tidy” data as an .rds object

[x] Create a plot that shows the six-month returns by the year in which the returns are collected

[x] Create a table using code of the DJIA returns that matches the table shown below (“spread” the data)

[x] Include your plots in an .Rmd file with short paragraph describing your plots. Make sure to display the tidyr code in your file

[x] Push your .Rmd, .md, and .html to your GitHub repo

##Class Task 11
[x] Use the readr::read_lines() function to read in each string - randomletters.txt and randomletters_wnumbers.txt

[x] With the randomletters.txt file, pull out every 1700 letter (e.g. 1, 1700, 3400, …) and find the quote that is hidden - the quote ends with a period

[x] With the randomletters_wnumbers.txt file, find all the numbers hidden and convert those numbers to letters using the letters order in the alphabet to decipher the message

[x] With the randomletters.txt file, remove all the spaces and periods from the string then find the longest sequence of vowels.

[x] Save your .R script to your repository and be ready to share your code solution at the beginning of class

##Class Task 12
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Install the library(Lahman) and examine the available data sets available

[x] Find the 4-5 different data sets that you will need to show full college and player names as well as their annual earnings

[x] Install the library(blscrapeR) and use the inflation_adjust(2017) function to get all earnings in 2017 dollars

[x] Make a plot showing how professional baseball player earnings that played baseball at BYU compared to the players from other Utah schools

[x] Save your .R script and image to your repository and be ready to share your code and image at the beginning of class

##Tasks 13 -24
##Class Task 13
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Load your “tidy” data from task 10 using the stock return data

[x] Create a plot that shows the six-month returns by the month in which the returns are collected using the eight years of data

[x] Include your plots in an .Rmd file with short paragraph describing your plots. Make sure to display the tidyr code in your file

[x] Push your .Rmd, .md, and .html to your GitHub repo

##Class Task 14
[x] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[x] Download the data from http://scriptures.nephi.org/downloads/lds-scriptures.csv.zip

[x] Read in the .csv file that was in the zip file and examine the structure of the data

[x] Address questions 1 & 2 using R functions from install.packages("stringr") and install.packages("stringi")

[x] Use the stri_stats_latex() and str_locate_all() functions from each package

[x] Create a visualization that addresses question 3

[x] Create an .Rmd file with 1-2 paragraphs and your graphics that answers the three questions

[x] Compile your .md and .html file into your git repository

##Class Task 15
[x] Read in the car wash data https://byuistats.github.io/M335/data/carwash.csv and format it for the needs of this task

[x] Convert the times from UTC time to mountain time using the right function out of library(lubridate).

[x] Create a new hourly grouping variable using ceiling_date() from library(lubridate)

[x] Aggregate the point of sale data into hour sales totals

[x] Use riem_measures(station = "RXE",  date_start  = ,  date_end  =  ) for station RXE from library(riem) to get the matching temperatures

[x] Create a new hourly variable that matches your car wash hourly variable

[x] Merge the two datasets together

[x] Create a visualization that provides insight into the relationship between sales and temperature by hour of the day

##Class Task 16
[x] Finish the in class coding challenge

##Class Task 17
[x] Take notes on your reading of the new R package in the README.md or in a ‘.R’ script in the class task folder

[x] List the three stocks that your friend picks and the three that you pick

[x] Pull the price performance data using library(tidyquant) or library(quantmod)

[x] Build a visualization that shows who is winning each day of the competition

[x] In the previous visualization or with another visualization show which stock is helping the winner of the competition

[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and the choices you made in the data presentation

[x] Compile your .md and .html file into your git repository

##Class Task 18
[x] Take notes on your reading of the new R package in the README.md or in a ‘.R’ script in the class task folder

[x] Build the library(dygraphs) plot that shows the Kroger (KR) stock price performance over 5 years.

[x] Imaging that you invested $10,000 in kroger about two years ago on April 5th. Make a graph with dygraph that shows performance dyRebased() to $10,000.

[x] Annotate the graphic with a note of the reason at two or more time points, or intervals, where the price had significant shifts.

[x] Create an .Rmd file with 1-2 paragraphs summarizing your graphics and the choices you made in the data presentation

[x] Compile your .md and .html file into your git repository
Class Task 19

[x] Take notes on your reading of the new R package in the README.md or in a ‘.R’ script in the class task folder

[x] Create a .png image that closely matches my example

[x] Note that fill = NA in geom_sf() will not fill the polygons with a grey color

[x] Note that library(USAboundaries) has three useful functions - us_cities(), us_states(), and us_counties()

[x] Save your script and .png files to GitHub

##Class Task 20
[ ] Take notes on your reading of the new R package in the README.md or in a ‘.R’ script in the class task folder

[ ] Read in all four of the necessary shp file datasets (see description)

[ ] Filter all the data for the specific needs of Idaho

[ ] Create a .png image that plots the required information

[ ] Save your script and .png files to GitHub

[ ] Be prepared to discuss your observations of the well and dam locations in our next class meeting

##Class Task 21
[ ] Take notes on your reading of the new R package in the README.md or in a ‘.R’ script in the class task folder

[ ] See tasks for Task 19 or Task 20

##Class Task 22
[ ] Complete the listed reading for class discussion

[ ] Find an additional article on R or Python and “big data” and write a summary of the article

[ ] Create an .Rmd file summarizing your reading

[ ] Compile your .md and .html file into your git repository

##Class Task 23
[ ] Take notes on your reading of the specified ‘R for Data Science’ chapter in the README.md or in a ‘.R’ script in the class task folder

[ ] Repeat the task 11 tasks using three functions that you built

##Class Task 24
[x] Finish the in class coding challenge