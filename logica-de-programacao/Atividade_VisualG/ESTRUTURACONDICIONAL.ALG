Algoritmo "EstruturaCondicional"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gustavo Guanabara
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 24/06/2024
Var
   // Num: inteiro
   M,A,IMC: real


Inicio
      EscrevaL("Massa (Kg):")
      leia(M)
      Escreval("Altura (m):")
      leia(A)
      
      IMC <- M / (A ^ 2)
      
      Escreval("IMC:", IMC:5:2)
      
      Se (IMC < 17) Entao
         Escreval("Muito abaixo do peso")
      Senao
           Se (IMC >=17) e (IMC < 18.5) entao
              Escreval("Abaixo do peso")
           Senao
                Se (IMC >=18.5) e (IMC < 25) entao
                   Escreval("Peso Ideal")
                Senao
                    Se (IMC >= 25) e (IMC < 30) entao
                       Escreval("Sobrepeso")
                    Senao
                         Se (IMC >= 30) e (IMC < 35) entao
                            Escreval("Obesidade")
                         Senao
                              Se (IMC >=35) e (IMC < 40) entao
                                 Escreval("Obesidade Severa)
                              Senao
                                   Escreval("Obsidade Morbida")
                              FimSe
                         FimSe
                    FimSe
                FimSe
           FimSe
      FimSe

Fimalgoritmo