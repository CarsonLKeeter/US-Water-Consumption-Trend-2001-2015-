library(ggplot2)
library(tidyverse)
library(gridExtra)

###### US Water Consumption Plot Code
waterplot <- ggplot(
  new_df1, 
  aes(
    new_df1$Years, 
    new_df1$Water_whole
    )
  ) + 
  geom_smooth(
    method = lm, 
    aes(
      x = new_df1$Years, 
      y = new_df1$Water_whole
      )
    ) + 
  scale_x_continuous(
    breaks = pretty(
      new_df1$Years, 
      n = 10
      )
    ) +
  labs(
    x = "Years", 
    y = "Water Consumption (ml)", 
    title = "US Water Consumption over 15 Years", 
    subtitle = "slope = -0.40, p-value < 0.001"
    )
###### US Sugar Consumption Plot Code
sugarplot <- ggplot(
  new_df1, 
  aes(
    new_df1$Years, 
    new_df1$Sugar_whole
    )
  ) + 
  geom_smooth(
    method = lm, 
    aes(x = new_df1$Years, 
        y = new_df1$Sugar_whole
        )
    ) + 
  scale_x_continuous(
    breaks = pretty(
      new_df1$Years, 
      n = 10)
    ) +
  labs(
    x = "Years", 
    y = "Sugar Consumption (ml)", 
    title = "US Sugar Consumption over 15 Years", 
    subtitle = "slope = -0.40, p-value < 0.001"
    )
##### Honestly magic 
grid.arrange(
  waterplot, 
  sugarplot, 
  nrow = 2
  )
