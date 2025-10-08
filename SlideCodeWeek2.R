# Introduction to Statistics for the Social Sciences — Slide code of Week 2
# Autor: Fabian Michel
# Datum: 2025-09-24

# Install Packages ----
# install.packages("tidyverse")
# install.packages("haven")
# install.packages("readxl")
install.packages("remotes")
remotes::install_github("schlegelfranz/schlegel")

# Download Files ----
schlegel::download_files()
# Load Libraries ----
library(tidyverse)
library(haven)
library(readxl)
library(remotes)


# Data Import ----
# 3.1 CSV (Komma-getrennt)
df_ches_csv_comma <- readr::read_csv("1999-2014_CHES.csv")

# 3.2 CSV (Semikolon-getrennt)
df_ches_csv_semicolon <- readr::read_csv2("1999-2014_CHES.csv")

# 3.3 Stata (*.dta)
df_ches_stata <- haven::read_dta("1999-2014_CHES.dta")
df_ches_stata <- haven::as_factor(df_ches_stata)

# 3.4 SPSS (*.sav)
df_ches_spss <- haven::read_sav("1999-2014_CHES.sav")
df_ches_spss <- haven::as_factor(df_ches_spss)

# 3.5 Excel (*.xlsx)
df_ches_xlsx <- readxl::read_excel("1999-2014_CHES.xlsx")

# 3.6 RDS (R-eigenes Binärformat)
df_ches_rds <- readr::read_rds("1999-2014_CHES.Rds")

# Vectors ----
yes_votes_lu <- 77143
yes_votes_lu

yes_votes <- c(
  295601, 241979, 77143, 7318, 28783,
  7068,   8971,  8456, 21583, 91444,
  64969,  43235, 67241, 21183, 10806,
  2183,  91321, 40888,132707, 47252,
  92050, 204085,  1747, 50682,108146,
  27255
)

yes_votes

# Data Frames ----
df_ahv <- data.frame(
  canton = c(
    "ZH","BE","LU","UR","SZ","OW","NW","GL","ZG","FR",
    "SO","BS","BL","SH","AR","AI","SG","GR","AG","TG",
    "TI","VD","VS","NE","GE","JU"
  ),
  yes_votes = c(
    295601,241979, 77143, 7318,28783, 7068, 8971, 8456,21583,91444,
    64969, 43235, 67241,21183,10806, 2183,91321,40888,132707,47252,
    92050,204085,  1747,50682,108146,27255
  )
)

head(df_ahv, n = 3)

# Data Types (some) ----
df_students <- data.frame(
  name   = c("Max", "Petra", "Sandra"),
  grade  = c(4, 3, 5),
  passed = c(TRUE, FALSE, TRUE)
)

class(df_students$name)
class(df_students$grade)
class(df_students$passed)

# Learning Goal 6 ----
# Select and Filter ----
df_ahv_full <- readr::read_csv("13ahv_abstimmung.csv")
