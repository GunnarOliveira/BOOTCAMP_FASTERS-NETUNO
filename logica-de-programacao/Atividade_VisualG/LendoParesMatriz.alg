algoritmo "LendoParesMatriz"
// Fun��o :
// Autor :
// Data : 26/06/2024
// Se��o de Declara��es
var
mat: vetor[1..3,1..3] de inteiro
l,c,cont:inteiro
inicio
// Se��o de Comandos

Para l <- 1 ate 3 faca
   Para c <- 1 ate 3 faca
      Escreva("Informe o valor [",l,",",c," ]: ")
      leia(mat[l,c])
   FimPara
FimPara
Escreval()
Escreval("MATRIZ:")
Escreval("---------------")
Para l <- 1 ate 3 faca
   Para c <- 1 ate 3 faca
        Se (mat[l,c] % 2 = 0) entao
           Escreva(" {",mat[l,c]:2,"}")
        Senao
             Escreva(mat[l,c]:4)
        FimSe
   FimPara
   Escreval("")
FimPara
Escreval("")

Para l <- 1 ate 3 faca
   Para c <- 1 ate 3 faca
      Se (mat[l,c] % 2 = 0) entao
         Escreval("O valor",mat[l,c]," na posi��o [",l,",",c," ] � PAR")
         cont <- cont + 1
      FimSe
   FimPara
FimPara
Escreval("Ao todo a matriz possui",cont," valores PARES")
fimalgoritmo
