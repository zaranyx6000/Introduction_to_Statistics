# Introduction to Statistics for the Social Sciences — Slide code of Week 4
# Autor: Fabian Michel
# Datum: 2025-10-08

# Install Packages ----
# install.packages("tidyverse")
# install.packages("haven")
# install.packages("readxl")
# install.packages("remotes")
# remotes::install_github("schlegelfranz/schlegel")
# install.packages("ggpubr")

# Download Files ----
schlegel::download_files()
# Load Libraries ----
library(tidyverse)
library(haven)
library(readxl)
library(remotes)
library(ggpubr)



# 1. Open the R project Chapel Hill Expert Survey from last week in R Studio and the R
# script ches.R.----

df_ches = read_csv("1999-2014_CHES.csv") 
source("ches.r")

# 2. Last week, we recoded the parties and combined CSU and CDU into CDU/CSU. Now,
# we want to aggregate these cases so that we only have one case per party and year
# in the dataset. Use the functions group_by() and summarise() from the tidyverse
# package. Group the data by the variables party and year, and calculate the mean of
# the variables left_right and liberal_conservative (mean()1). Add the code directly
# to the existing code using the pipe operator.----

# 3. Use the dataset created in task 2 without modifying it further. Filter it for the year 2014
# and then create a bar chart using geom_col()2, where you map the left-right positioning
# on the x-axis and the parties on the y-axis. Don’t forget to label the axes nicely.----


# 4. Now, let’s add party colors to our chart. Add the party as a fill color. Adjust the colors
# in the chart using the function scale_fill_manual(). [SPD: #E3000F, CDU/CSU:
#  000000, Green: #1AA037, FDP: #FFEF00, The Left: #E3000F, AfD: #0489DB,
# other: #808080] Since we already have the parties labeled on the y-axis, we don’t need
# the legend. Add the following code to your chart at the end: + theme(legend.position
#     nonee") ----
                                                      

# 5. Copy the code for the chart from task 4 and change left_right to liberal_conservative.
# Save both charts in the variables plot1 and plot2. Then, run the following code to
#  display the two charts side by side. What do you notice?

# ggarrange(plot1, plot2, ncol = 2)
