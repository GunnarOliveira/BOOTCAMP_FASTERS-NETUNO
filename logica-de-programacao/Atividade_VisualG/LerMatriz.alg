algoritmo "LerMatriz"
// Função :
// Autor :
// Data : 26/06/2024
// Seção de Declarações
var
mat: vetor [1..3, 1..2] de  inteiro
l,c:inteiro
inicio
// Seção de Comandos
Para l <- 1 ate 3 faca
   Para c <- 1 ate 2 faca
      Escreva("Digite o valor da linha",l, " coluna",c,": ")
      leia(mat[l,c])
   FimPara
FimPara

Para l <- 1 ate 3 faca
   Para c <- 1 ate 2 faca
      Escreva(mat[l,c]:5)
   FimPara
   Escreval("")
FimPara
fimalgoritmo
