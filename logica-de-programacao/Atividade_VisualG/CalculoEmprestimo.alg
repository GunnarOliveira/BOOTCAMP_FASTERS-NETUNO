algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 22/06/2024
// Se��o de Declara��es 
var
   valorEmprestimo: real
   valorParcelas: inteiro
inicio
// Se��o de Comandos 
   escreval("Qual o valor do emprestimo?")
   leia(valorEmprestimo)
   escreval("Em quantas parcelas?")
   leia(valorParcelas)
   
   escreval("Vou pagar", valorParcelas, " parcelas de R$", (valorEmprestimo * 0.2 + valorEmprestimo) / valorParcelas)
fimalgoritmo
