df_trump <- read_csv("president-averages.csv") |>
  filter(answer == "Approve")

ggplot(df_trump, aes(y = pct / 100, x = date)) +
  geom_line(color = "steelblue", size = 1) +
  theme_minimal() +
  xlab("Date") +
  ylab("Average Approval Rates Trump") +
  scale_y_continuous(labels = scales::percent) +
  labs(caption = "Source Data: New York Times") +
  ylim(0, 1) 

view(df_trump)
