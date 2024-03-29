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

#Distribui��o de Freque�ncias - Absolutas
civil.tb <- table(milsa$Est.civil)
cbind("f" = civil.tb)
# com somat�rio

#1. Quais e quantas s�o as regi�es dos funcion�rios da empresa?
regiao.tb <- table(milsa$Regiao)
cbind("f" = regiao.tb)

#2. Quantos s�o os funcion�rios  de cada regi�o?
length(which(milsa$Regiao=='capital'))
length(which(milsa$regiao=='outro'))
length(which(milsa$Regiao=='interior'))
##outra forma - Functions
contar <- function(x, n)(length((which(x == milsa$Regiao))))
contar("capital", milsa)

#3. Qual a m�dia ,a maior e a menor idade dos funcion�rios?
max(milsa$Anos)
min(milsa$Anos)
med(milsa$Anos)

#4. Ser� que os funcioin�rios com maior grau de instru��o s�o da capital ou do interior?
ordenado.Inst <- milsa[order(milsa$Inst), ]
View(ordenado.Inst) ##olhando o dataframe ordenado conseguimos ter uma analise
#de que � bem variado a distribui��o

#5. Ser� que os que tem maior instru��o � que ganham mais?
ordenado <- milsa[order(milsa$Salario), ]
View(ordenado.Inst) ##Esta analise � um tanto quanto subjetiva, pois ao
#vermos o dataframe ordenado pelo sal�rio vemos que os 5 maiores sal�rios s�o
#em sua maioria de curso superior, mas se aumentarmos nossa amostra para p ex.
#os 10 maiores sal�rios isso j� n�o � verdade

#6. Os mais velhos ganham mais?
ordenado.idade <- milsa[order(milsa$Anos),]
View(ordenado.idade)

#7. Qual a rela��o entre o n�mero de filhos e o sal�rio? Ser� que existe uma correla��o?
cor(milsa$Salario, milsa$Filhos, use = "complete.obs")
plot(milsa$Salario, milsa$Filhos)

##N�o parece haver uma forte correla��o entre estas 2 vari�veis, mas
##vamos ver mais a frente
### https://rpubs.com/melinatarituba/353262
### https://rpubs.com/gomes555/correlacao