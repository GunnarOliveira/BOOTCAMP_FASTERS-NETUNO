algoritmo "MatrizIdentidadeNordem"
// Fun��o :
// Autor :
// Data : 26/06/2024
// Se��o de Declara��es 
var
mat: vetor[1..4,1..4] de inteiro
l,c:inteiro
inicio
// Se��o de Comandos 

Para l <- 1 ate 4 faca
     Para c <- 1 ate 4 faca
          Se(l = c) entao
               mat[l,c] <- 1
          Senao
               mat[l,c] <- 0
          FimSe
     FimPara
FimPara
     Escreval()
     Escreval("MATRIZ IDENTIDADE 3� ORDEM:")
     Escreval("---------------------------")
     Escreval()
Para l <- 1 ate 4 faca
    Para c <- 1 ate 4 faca
         escreva(mat[l,c]:4)
    FimPara
    Escreval()
FimPara
fimalgoritmo
