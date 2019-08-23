max(milsa$Anos)
mean(milsa$Anos)
min(milsa$Anos)

View(milsa)
fuc.tb <- table(milsa$Inst)
View(fuc.tb)
sort(milsa$Inst)

summary(milsa) #amostragem
head(milsa) #amostra do datafram
str(milsa) #estrutura do dataframe, tipos e valores

#Distribuição de Frequeências - Absolutas
civil.tb <- table(milsa$Est.civil)
cbind("f" = civil.tb)
# com somatório

#1. Quais e quantas são as regiões dos funcionários da empresa?
regiao.tb <- table(milsa$Regiao)
cbind("f" = regiao.tb)

#2. Quantos são os funcionários  de cada região?
length(which(milsa$Regiao=='capital'))
length(which(milsa$regiao=='outro'))
length(which(milsa$Regiao=='interior'))
##outra forma - Functions
contar <- function(x, n)(length((which(x == milsa$Regiao))))
contar("capital", milsa)

#3. Qual a média ,a maior e a menor idade dos funcionários?
max(milsa$Anos)
min(milsa$Anos)
med(milsa$Anos)

#4. Será que os funcioinários com maior grau de instrução são da capital ou do interior?
ordenado.Inst <- milsa[order(milsa$Inst), ]
View(ordenado.Inst) ##olhando o dataframe ordenado conseguimos ter uma analise
#de que é bem variado a distribuição

#5. Será que os que tem maior instrução é que ganham mais?
ordenado <- milsa[order(milsa$Salario), ]
View(ordenado.Inst) ##Esta analise é um tanto quanto subjetiva, pois ao
#vermos o dataframe ordenado pelo salário vemos que os 5 maiores salários são
#em sua maioria de curso superior, mas se aumentarmos nossa amostra para p ex.
#os 10 maiores salários isso já não é verdade

#6. Os mais velhos ganham mais?
ordenado.idade <- milsa[order(milsa$Anos),]
View(ordenado.idade)

#7. Qual a relação entre o número de filhos e o salário? Será que existe uma correlação?
cor(milsa$Salario, milsa$Filhos, use = "complete.obs")
plot(milsa$Salario, milsa$Filhos)

##Não parece haver uma forte correlação entre estas 2 variáveis, mas
##vamos ver mais a frente
### https://rpubs.com/melinatarituba/353262
### https://rpubs.com/gomes555/correlacao