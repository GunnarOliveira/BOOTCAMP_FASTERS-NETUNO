algoritmo "TabelaCampeonato"
// Função :
// Autor :
// Data : 26/06/2024
// Seção de Declarações
var
vetTimes: vetor[1..3] de caractere
i,j:inteiro
inicio
// Seção de Comandos
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
