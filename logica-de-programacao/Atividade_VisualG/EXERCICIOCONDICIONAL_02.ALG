Algoritmo "ExercicioCondicional_02"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gustavo Guanabara
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/06/2024
Var
   // Seção de Declarações das variáveis
    n1,n2,resultado: real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("-----------------------")
   Escreval("ESCOLA DO MACACO LOUCO")
   Escreval("-----------------------")

   Escreval("Primeira nota: ")
   Leia(n1)
   Escreval("Segunda nota: ")
   Leia(n2)

   resultado <- (n1 + n2) / 2

   Se (resultado >= 9) e (resultado < 10) entao
      Escreval("Média:", resultado)
      Escreval("Classificação: A")
   Senao
      Se (resultado >= 8) e (resultado < 9) entao
         Escreval("Média:", resultado)
         Escreval("Classificação: B")
      Senao
           Se (resultado >= 7) e (resultado < 8) entao
              Escreval("Média:",resultado)
              Escreval("Classificação: C")
           Senao
                Se(resultado >=6) e (resultado < 7) entao
                  Escreval("Média:", resultado)
                  Escreval("Classificação D")
                Senao
                     Se (resultado >= 5) e (resultado < 6) entao
                        Escreval("Média:", resultado)
                        Escreval("Classificação E")
                     Senao
                          Escreval("Média:",resultado)
                          Escreval("Classificação F")
                     FimSe
                FimSe
           FimSe
      FimSe
   FimSe
Fimalgoritmo