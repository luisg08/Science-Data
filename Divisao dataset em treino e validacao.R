dadospuf <- read.csv("C:/Users/Laboratorio/Downloads/puffinbill.csv", sep = ",")
View(dadospuf)
str(dadospuf)

#Divis�o do dataset em Treino e valida��o
amostra <- sample(nrow(dadospuf),nrow(dadospuf)* .6)
ordenado <- sort(amostra)

treino <- dadospuf[ordenado,]

teste <- dadospuf[-ordenado,]

#Modelo de Regress�o Log�stica
modelotreinamento <- glm(sex ~ curlen, family = binomial, data = treino)

#Aplica��o do modelo que aprendeu com o dataset de treino para retornar as
#probabilidades sobre o dataset de teste

previsao <- predict(modelotreinamento, teste, type="response")

teste

previsao.alterado <- ifelse(previsao >= 0.5, "M", "F")

previsao.alterado <- as.factor(previsao.alterado)

