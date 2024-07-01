Algoritmo "CalculandoIdade"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gustavo Guanabara
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gunnar Vingren
// Data atual  : 22/06/2024
Var
// Seção de Declarações das variáveis
   Idade:inteiro
   AnoAtual:inteiro
   AnoNascimento:inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
   Escreval("Em que ano nós estamos?")
   leia(AnoAtual)
   Escreval("Em que ano eu nasci?")
   leia(AnoNascimento)
   
   idade <- AnoAtual - AnoNascimento
   
   Escreval("Eu tenho", idade, " anos")

Fimalgoritmo