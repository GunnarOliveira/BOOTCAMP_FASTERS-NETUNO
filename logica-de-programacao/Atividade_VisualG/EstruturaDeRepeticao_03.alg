algoritmo "EstruturaDeRepeticao_03"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações 
var
   cont,v,t,Simp:inteiro
inicio
t <- 0
Simp <- 0
// Seção de Comandos
Para cont <- 1 ate 6 passo 1 faca
     Escreval("Informe um número")
     leia(v)
     Se (v >= 0) e (v <= 10) entao
        t <- t + 1
        

     FimSe
      Se (v%2 = 1) entao
           Simp <- Simp + v
      FimSe

FimPara

fimalgoritmo
