algoritmo "Matrizes"
// Função :
// Autor :
// Data : 26/06/2024
// Seção de Declarações
var
m: vetor[1..4,1..4] de inteiro
l,c,sDP,pSL,mai3C,linhaMaior3C:inteiro
inicio
// Seção de Comandos
sDP<- 0
pSL<- 1
Para l <- 1 ate 4 faca
   Para c <- 1 ate 4 faca
      Escreva("Digite o valor da posicao ","[ ",l,",",c," ]: ")
      leia(m[l,c])

      Se(l = c) entao
         sDP <- sDP + m[l,c]
      FimSe

      Se(l = 2) entao
         pSL <- pSL * m[l,c]
      FimSe
   FimPara
FimPara
Escreval()

Para l <- 1 ate 4 faca
     Se(m[l,3] > mai3C) entao
       mai3C <- m[l,3]
       linhaMaior3C <- l
     FimSe
FimPara

   Para l <- 1 ate 4 faca
      Para c <- 1 ate 4 faca
         Escreva(m[l,c]:4)
      FimPara
      Escreval()
   FimPara
   Escreval()
   Escreval("A soma dos valores da diagonal principal é:",sDP)
   Escreval("O resultado do produto dos valores da segunda linha é:",pSL)
   Escreval("O maior da terceira coluna é:", mai3C," na linha",linhaMaior3C)
fimalgoritmo
