algoritmo "semnome"
// Função :
// Autor :
// Data : 22/06/2024
// Seção de Declarações 
var
   valorEmprestimo: real
   valorParcelas: inteiro
inicio
// Seção de Comandos 
   escreval("Qual o valor do emprestimo?")
   leia(valorEmprestimo)
   escreval("Em quantas parcelas?")
   leia(valorParcelas)
   
   escreval("Vou pagar", valorParcelas, " parcelas de R$", (valorEmprestimo * 0.2 + valorEmprestimo) / valorParcelas)
fimalgoritmo
