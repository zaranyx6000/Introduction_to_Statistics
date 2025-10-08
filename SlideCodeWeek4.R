library(tidyverse)
df_selects = schlegel::selects2015
ggplot(df_selects) +
  geom_bar(aes(x = opinion_high_income_taxes),
           fill = "steelblue")

df_selects |>
  filter(!is.na(opinion_high_income_taxes) &
           !is.na(vote_choice)) |>
  ggplot(aes(y = opinion_high_income_taxes)) +
  geom_bar(fill="steelblue") + theme_bw() +
  facet_wrap(~vote_choice) +
  xlab("Count") + ylab("Opinion high income taxes")


