set.seed(1962)

n <- 165
u <- 2
v <- 4

amostra_cauchy <- rcauchy(n, location = -3.8, scale = 1.6)
amostra_ordenada_cauchy <- sort(amostra_cauchy)

quantis <- (1:n)/(n + 1)

caso_cauchy <- qcauchy(quantis, location = -3.8, scale = 1.6)
#caso_cauchy <- quantile(amostra_ordenada_cauchy, quantis)
caso_normal <- qnorm(quantis, u, sqrt(v))

quantis <- (1:n)/(n + 1)

dados_cauchy <- data.frame(Quantil = amostra_ordenada_cauchy, Valor = caso_cauchy)
dados_normal <- data.frame(Quantil = amostra_ordenada_cauchy, Valor = caso_normal)

ggplot() +
  geom_point(data = dados_cauchy, aes(x = Valor, y = Quantil, color = "Cauchy")) +
  geom_point(data = dados_normal, aes(x = Valor, y = Quantil, color = "Normal")) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  labs(y = "Quantis de Probabilidade", x = "Valores Ordenados", 
       title = "Amostras de Cauchy e Normal") +
  theme_minimal() +
  guides(color = guide_legend(title = "Variáveis"))

