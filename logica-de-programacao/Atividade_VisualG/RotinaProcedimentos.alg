algoritmo "semnome"

var
n:inteiro

Procedimento verificador(A:inteiro)
Inicio
Se (A % 2 = 0) entao
   Escreval("O n�mero", A, " � par")
Senao
     Escreval("O n�mero", A, " � �mpar")
FimSe
FimProcedimento

inicio
// Se��o de Comandos 
Escreva("Informe um valor: ")
leia(n)
verificador(n)
fimalgoritmo
