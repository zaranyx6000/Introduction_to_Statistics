# install.packages("glm.predict")
library(glm.predict)
library(tidyverse)
df_trump = read_csv("president-averages.csv") |> 
  filter(answer == "Approve")
ggplot(df_trump, aes(y = pct/100, x = date)) +
  geom_line(color="steelblue", size = 1) + theme_minimal() +
  xlab("Date") + ylab("Average Approval Rates Trump") +
  scale_y_continuous(labels = scales::percent, 
                     limits = c(0.3, 0.51)) +
  labs(caption = "Source Data: New York Times")

model_logit = glm(participation ~ age * gender, 
                  data = schlegel::selects2015,
                  family = "binomial",
                  weights = weight_total)
df_pred = glm.predict::predicts(model_logit, "all;all")

ggplot(df_pred, aes(x = age, color = gender, y = mean,
                    ymin = lower, ymax = upper)) + 
  geom_line() + geom_ribbon(fill = NA, linetype = "dashed") + 
  theme_minimal() +
  scale_y_continuous(labels = scales::percent) +
  scale_color_manual("Gender", values = c("steelblue", "orange"))



ggplot(df_pred, aes(x = age, y = mean,
                    ymin = lower, ymax = upper)) + 
  geom_line(aes(color = gender)) + 
  geom_ribbon(aes(fill = gender), alpha = 0.3) + 
  theme_minimal() +
  scale_y_continuous(labels = scales::percent) +
  scale_color_manual("Gender", values = c("steelblue", "orange")) +
  scale_fill_manual("Gender", values = c("steelblue", "orange"))

ggplot(df_pred, aes(x = age, y = mean,
                    ymin = lower, ymax = upper)) + 
  geom_line(aes(color = gender)) + 
  #geom_ribbon(aes(fill = gender), alpha = 0.3) + 
  theme_minimal() +
  scale_y_continuous(labels = scales::percent) +
  scale_color_manual("Gender", values = c("steelblue", "orange")) +
  scale_fill_manual("Gender", values = c("steelblue", "orange"))


ggplot(schlegel::selects2015 |> filter(!is.na(opinion_eu_membership))
       , aes(x = opinion_eu_membership)) +
  geom_bar(fill = "orange") + theme_classic() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1),
        axis.title.y = element_blank()) +
  xlab("Option on EU-membersip")

