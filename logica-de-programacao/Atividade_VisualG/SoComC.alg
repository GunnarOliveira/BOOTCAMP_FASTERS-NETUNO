algoritmo "SOcomC"
// Função :
// Autor :
// Data : 26/06/2024
// Seção de Declarações 
var
nomeComC: vetor[1..10] de caractere
nomes:caractere
i,j,tot:inteiro
inicio
// Seção de Comandos 
      tot <- 0
Para i <- 1 ate 10 faca
     Escreva("Informe um nome: ")
     leia(nomes)
     
     Se(Copia(Maiusc(nomes), 1, 1) = "C") entao
        tot<- tot + 1
        nomeComC[tot] <- nomes
     FimSe
FimPara

Limpatela()
Escreval("LISTAGEM FINAL")
Para j <- 1 ate tot faca
     Escreval(nomeComC[j])
FimPara
fimalgoritmo
