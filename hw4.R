install.packages("datasets")
head(ChickWeight)
?ChickWeight

levels(ChickWeight$Diet)

head(ChickWeight)

library(dplyr)

weight0 = ChickWeight %>%
  group_by(Diet) %>%
  summarise(
    num = n(),
    meanWeight = mean(weight),
    stdWeight = sd(weight)
  )
weight0


levels(ChickWeight$weight)

complete = ChickWeight %>%
  group_by(Chick) %>%
  mutate(
    numMeasurements = n()
  ) %>%
  filter(numMeasurements == 12)
head(complete, 3)