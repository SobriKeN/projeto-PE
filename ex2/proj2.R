df <- read.csv("Desktop/PE/projeto PE/assets/TIME_USE_24092022.csv")
df <- df[df$País != "África do Sul", ]
df_total <- df[df$Sexo == "Total" & (df$Ocupação == "Outros" | df$Ocupação == "Trabalho remunerado ou estudo"), ]
ggplot(df_total, aes(x = Ocupação, y = Tempo)) +
  geom_boxplot() +
  labs(title = "Comparação dos tempos médios diários para mulheres em diferentes ocupações",
  y = "Tempo médio diário (minutos)") +
  theme_bw()