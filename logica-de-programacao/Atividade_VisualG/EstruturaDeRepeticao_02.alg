algoritmo "EstruturaDeRepeticao-02"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações
var
C,N,ContDiv:inteiro
inicio
C <- 1
ContDiv <- 0
Escreva("Informe um número: ")
leia(N)

Repita
   Se(N % C = 0) entao
      ContDiv <- ContDiv + 1
   FimSe
   C <- C + 1
Ate(C > N)

Se(ContDiv > 2) entao
   Escreva("O número",N, " não é primo")
Senao
   Escreva("O número",N," é primo.")
   
FimSe
fimalgoritmo
