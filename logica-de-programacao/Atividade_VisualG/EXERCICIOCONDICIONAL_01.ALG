Algoritmo "ExercicioCondicional_01"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gustavo Guanabara 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Gunnar Vingren
// Data atual  : 24/06/2024
Var
// Seção de Declarações das variáveis 
   anoAtual,anoNascimento,resultado:inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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