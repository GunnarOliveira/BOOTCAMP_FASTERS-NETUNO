Algoritmo "ExercicioCondicional_02"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Gustavo Guanabara
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/06/2024
Var
   // Se��o de Declara��es das vari�veis
    n1,n2,resultado: real

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Escreval("-----------------------")
   Escreval("ESCOLA DO MACACO LOUCO")
   Escreval("-----------------------")

   Escreval("Primeira nota: ")
   Leia(n1)
   Escreval("Segunda nota: ")
   Leia(n2)

   resultado <- (n1 + n2) / 2

   Se (resultado >= 9) e (resultado < 10) entao
      Escreval("M�dia:", resultado)
      Escreval("Classifica��o: A")
   Senao
      Se (resultado >= 8) e (resultado < 9) entao
         Escreval("M�dia:", resultado)
         Escreval("Classifica��o: B")
      Senao
           Se (resultado >= 7) e (resultado < 8) entao
              Escreval("M�dia:",resultado)
              Escreval("Classifica��o: C")
           Senao
                Se(resultado >=6) e (resultado < 7) entao
                  Escreval("M�dia:", resultado)
                  Escreval("Classifica��o D")
                Senao
                     Se (resultado >= 5) e (resultado < 6) entao
                        Escreval("M�dia:", resultado)
                        Escreval("Classifica��o E")
                     Senao
                          Escreval("M�dia:",resultado)
                          Escreval("Classifica��o F")
                     FimSe
                FimSe
           FimSe
      FimSe
   FimSe
Fimalgoritmo