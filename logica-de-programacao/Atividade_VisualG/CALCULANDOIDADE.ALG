Algoritmo "CalculandoIdade"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gustavo Guanabara
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Gunnar Vingren
// Data atual  : 22/06/2024
Var
// Se��o de Declara��es das vari�veis
   Idade:inteiro
   AnoAtual:inteiro
   AnoNascimento:inteiro


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   Escreval("Em que ano n�s estamos?")
   leia(AnoAtual)
   Escreval("Em que ano eu nasci?")
   leia(AnoNascimento)
   
   idade <- AnoAtual - AnoNascimento
   
   Escreval("Eu tenho", idade, " anos")

Fimalgoritmo