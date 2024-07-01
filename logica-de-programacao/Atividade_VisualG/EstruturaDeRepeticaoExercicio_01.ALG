algoritmo "EstruturaRepeticao01"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações
var
varInicio,varFim,contador:inteiro
inicio
// Seção de Comandos
Escreval("---------------------")
Escreval("CONTAGEM INTELIGENTE")
Escreval("---------------------")

Escreval("Início: ")
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
