df <- read.delim("Desktop/PE/projeto PE/assets/GENDER_EMP_19032023152556091.txt")
df <- df[df$SEX != "ALL_PERSONS", ]
df <- df[df$IND == "EMP1", ]
df <- df[df$Country == "Spain", ]
df <- df[df$AGE != "1564" & df$AGE != "TOTAL", ]
df <- df[df$TIME == "2019", ]
ggplot(df, aes(x = Age.Group, y = Value, fill = Sex)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  theme_minimal() +
  labs(x = "Ages", y = "Values") +
  ggtitle("Spain's labour force participation rate between womem and men in 2019")