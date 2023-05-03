library(openxlsx)
library(ggplot2)
df <- read.xlsx("Downloads/econ.xlsx", sheet = 1, rows = c(1,seq(224,575)), 
                cols = c(1,4,5), colNames = TRUE, rowNames = FALSE)
df$tempo <- as.Date(df$tempo, origin = "1899-12-30") 
df$tpp <- (df$tpp - mean(df$tpp)) /sd(df$tpp)
df$ddesemp <- (df$ddesemp - mean(df$ddesemp)) /sd(df$ddesemp)
ggplot(df, aes(x = tempo, color = Variaveis)) +
  geom_line(aes(y = ddesemp, color = "Duração do desemprego (semanas)"))+
  geom_line(aes(y = tpp, color = "Taxa de poupança pessoal"))+
  labs(x = "Tempo desde 1986", y = "Variavéis de desemprego e taxa de poupança")+
  ggtitle("Desenvolvimento da duração de desemprego e da taxa de poupança nos EUA desde 1986")+
  theme_bw() 