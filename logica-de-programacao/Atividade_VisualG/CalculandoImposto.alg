algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 22/06/2024
// Se��o de Declara��es 
var
   valorProduto,imposto: real

inicio
// Se��o de Comados
   escreval("Qual o valor do produto?")
   leia(valorProduto)
   
   imposto <- (valorProduto * 60) / 100
   
   escreval("O valor do imposto ser� de USD$: ", imposto)
fimalgoritmo
