algoritmo "EstruturaDeRepeticao-02"
// Fun��o :
// Autor :
// Data : 25/06/2024
// Se��o de Declara��es
var
C,N,ContDiv:inteiro
inicio
C <- 1
ContDiv <- 0
Escreva("Informe um n�mero: ")
leia(N)

Repita
   Se(N % C = 0) entao
      ContDiv <- ContDiv + 1
   FimSe
   C <- C + 1
Ate(C > N)

Se(ContDiv > 2) entao
   Escreva("O n�mero",N, " n�o � primo")
Senao
   Escreva("O n�mero",N," � primo.")
   
FimSe
fimalgoritmo
