# Introduction to Statistics for the Social Sciences — Slide code of Week 3
# Autor: Fabian Michel
# Datum: 2025-10-01

# Install Packages ----
install.packages("tidyverse")
install.packages("haven")
install.packages("readxl")
install.packages("remotes")
remotes::install_github("benjaminschlegel/schlegel")

# Download Files ----
schlegel::download_files()
# Load Libraries ----
library(tidyverse)
library(haven)
library(readxl)
library(remotes)


name = c("Clara", "Lukas", "Emilia", "Anna", "Luke")
name
name = factor(name)
name
as.numeric(name)
numbers = sample(10:15, 30, replace = TRUE)
factor = factor(numbers)
factors = read_csv("1999-2014_CHES.csv")
as.numeric(factor)
class(factor)
typeof(factor)

df_ches = read_csv("1999-2014_CHES.csv")
df_ches = mutate(df_ches,
                 galtan =
                   case_match(galtan,
                              "extreme gal" ~ 0,
                              "center" ~ 5,
                              "extreme tan" ~ 10,
                              .default =
                              as.numeric(galtan)))
                   
df_ches = mutate(df_ches,
                 galtanCat =
                   case_when(galtan <= 3 ~ "left",
                             galtan < 7 ~ "center",
                             galtan >= 7 ~ "right"))                   
