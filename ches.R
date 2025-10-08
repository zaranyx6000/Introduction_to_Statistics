library(tidyverse)


df_ches_m = read_csv("1999-2014_CHES.csv") |>
  select(country = country, party = party, year = year, left_right = lrecon,
         liberal_conservative = galtan) |> filter(country == "ge") |> mutate(
                                                                             # since all values are numbers, as.numeric is sufficient
                                                                             left_right = as.numeric(left_right),
                                                                             liberal_conservative = as.numeric(liberal_conservative),
                                                                             party = case_match(party,
                                                                                                c("CDU", "CSU") ~ "CDU/CSU",
                                                                                                "SPD" ~ "SPD",
                                                                                                "FDP" ~ "FDP",
                                                                                                
                                                                                                "Grunen" ~ "Green",
                                                                                                "LINKS" ~ "The Left",
                                                                                                "AfD" ~ "AfD",
                                                                                                .default = "other") |> as.factor()
         )
4

view(df_ches)
