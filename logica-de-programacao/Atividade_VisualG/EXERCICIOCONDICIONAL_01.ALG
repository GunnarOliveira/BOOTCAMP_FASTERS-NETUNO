Algoritmo "ExercicioCondicional_01"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gustavo Guanabara 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Gunnar Vingren
// Data atual  : 24/06/2024
Var
// Se��o de Declara��es das vari�veis 
   anoAtual,anoNascimento,resultado:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   Escreval("--------------------------")
   Escreval(" DEPARTAMENTO DE TRANSITO")
   Escreval("--------------------------")
   
   Escreval("Ano atual (yyyy):")
   Leia(anoAtual)
   Escreval("Ano de nascimento (yyyy):")
   Leia(anoNascimento)
   
   resultado <- anoAtual - anoNascimento
   
   Se (resultado < 18) entao
      Escreval("INAPTO a dirigir")
   Senao
        Escreval("APTO a dirigir")
   FimSe

Fimalgoritmo