algoritmo "TabelaCampeonato"
// Fun��o :
// Autor :
// Data : 26/06/2024
// Se��o de Declara��es
var
vetTimes: vetor[1..3] de caractere
i,j:inteiro
inicio
// Se��o de Comandos
Escreval("------------------")
Escreval("TORNEIO DE FUTEBOL")
Escreval("------------------")
Escreval("")
Para i<- 1 ate 3 faca
   Escreva("Nome do",i,"o. time: ")
   leia(vetTimes[i])
FimPara
LimpaTela()


Escreval("---------------")
Escreval("TABELA DE TIMES")
Escreval("---------------")
Para i<- 1 ate 3 faca
   Para j<-1 ate 3 faca
      Se (vetTimes[i] <> vetTimes[j]) entao
         Escreval(vetTimes[i]:10, "[ ]"," X ","[ ] ",vetTimes[j])
      FimSe
   FimPara
FimPara


fimalgoritmo
