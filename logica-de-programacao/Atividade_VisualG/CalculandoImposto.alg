algoritmo "semnome"
// Função :
// Autor :
// Data : 22/06/2024
// Seção de Declarações 
var
   valorProduto,imposto: real

inicio
// Seção de Comados
   escreval("Qual o valor do produto?")
   leia(valorProduto)
   
   imposto <- (valorProduto * 60) / 100
   
   escreval("O valor do imposto será de USD$: ", imposto)
fimalgoritmo
