Algoritmo "ExercicioCondicional_03"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gustavo Guanabara 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Gunnar Vingren
// Data atual  : 24/06/2024
Var
// Se��o de Declara��es das vari�veis 
  time01,time02: caractere
  gols01,gols02,resultado: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Escreval("Informe o time da casa:")
   leia(time01)
   Escreval("Informe o time visitante:")
   leia(time02)

   Escreval("--------------------------")
   Escreval("  ",time01, " X ", time02,"  ")
   Escreval("--------------------------")
   
   Escreval("Quantos gols do ", time01)
   leia(gols01)
   Escreval("Quantos gols do ", time02)
   leia(gols02)

   Se (gols01 > gols02) entao
      resultado <- gols01 - gols02
   Senao
        resultado <- gols02 - gols01
   FimSe
   
   Se (resultado >= 4) entao
      Escreval("-------------------------")
      Escreval("  Diferen�a: ", resultado)
      Escreval("  Status: GOLEADA!")
      Escreval("-------------------------")
   Senao
      Se(resultado >= 1) entao
         Escreval("-------------------------")
         Escreval("  Diferen�a: ", resultado)
         Escreval("  Status: Partida normal!")
         Escreval("-------------------------")
      Senao
         Escreval("-------------------------")
         Escreval("  Diferen�a: ", resultado)
         Escreval("  Status: empate!")
         Escreval("-------------------------")
      FimSe
   FimSe

   

Fimalgoritmo