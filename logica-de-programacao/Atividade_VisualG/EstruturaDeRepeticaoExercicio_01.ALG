algoritmo "EstruturaRepeticao01"
// Fun��o :
// Autor :
// Data : 25/06/2024
// Se��o de Declara��es
var
varInicio,varFim,contador:inteiro
inicio
// Se��o de Comandos
Escreval("---------------------")
Escreval("CONTAGEM INTELIGENTE")
Escreval("---------------------")

Escreval("In�cio: ")
leia(varInicio)
Escreval("Fim: ")
leia(varFim)

Se (varInicio < varFim) entao
   contador <- varInicio
   Escreval("-----------")
   Escreval(" CONTANDO")
   Escreval("-----------")

   Enquanto (contador <= varFim)faca
      Escreva(Contador,"...")
      contador <- contador + 1
   FimEnquanto

Senao
   Escreval("-----------")
   Escreval(" CONTANDO")
   Escreval("-----------")
   contador <- varInicio
   Enquanto (contador >= varFim) faca

      Escreva(Contador, "...")
      contador <- contador - 1
   FimEnquanto

FimSe
fimalgoritmo
