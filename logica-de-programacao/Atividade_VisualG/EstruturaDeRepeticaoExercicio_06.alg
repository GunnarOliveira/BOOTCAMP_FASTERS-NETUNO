algoritmo "EstruturaDeRepeticaoExercicio_06"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações 
var
   i,s,cd,cn,sp,v:inteiro
   m: real
inicio
// Seção de Comandos
s <- 0
m <- 0
cd <- 0
cn <- 0
sp <- 0

Para i <- 1 ate 5 passo 1 faca
     Escreval("Digite o ",i,"o. valor: ")
     leia(v)
     S<- s + v
     
     Se (v % 5 = 0) entao
        cd <- cd + 1
     FimSe
     Se (v = 0) entao
        cn <- cn + 1
     FimSe
     Se (v % 2 = 0) entao
        sp <- sp + v
     FimSe
FimPara
   m <- s / 5
fimalgoritmo
