algoritmo "semnome"

var
n:inteiro

Procedimento verificador(A:inteiro)
Inicio
Se (A % 2 = 0) entao
   Escreval("O número", A, " é par")
Senao
     Escreval("O número", A, " é ímpar")
FimSe
FimProcedimento

inicio
// Seção de Comandos 
Escreva("Informe um valor: ")
leia(n)
verificador(n)
fimalgoritmo
