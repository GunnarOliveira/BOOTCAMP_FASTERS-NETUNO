algoritmo "EstruturaDeRepeticao_03"
// Fun��o :
// Autor :
// Data : 25/06/2024
// Se��o de Declara��es 
var
   cont,v,t,Simp:inteiro
inicio
t <- 0
Simp <- 0
// Se��o de Comandos
Para cont <- 1 ate 6 passo 1 faca
     Escreval("Informe um n�mero")
     leia(v)
     Se (v >= 0) e (v <= 10) entao
        t <- t + 1
        

     FimSe
      Se (v%2 = 1) entao
           Simp <- Simp + v
      FimSe

FimPara

fimalgoritmo
