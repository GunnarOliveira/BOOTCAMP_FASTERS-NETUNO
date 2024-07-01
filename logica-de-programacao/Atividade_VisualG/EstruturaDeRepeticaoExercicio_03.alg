algoritmo "EstruturaDeRepeticaoExercicio01"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações 
var
    escolhaUser,i:inteiro


inicio
// Seção de Comandos
repita
Escreval("                 ")
Escreval("=================")
Escreval("       MENU      ")
Escreval("=================")

Escreval("| [1] De 1 a 10 |")
Escreval("| [2] De 10 a 1 |")
Escreval("| [3] Sair      |")
Escreval("|===============|")
Leia(escolhaUser)
Escolha  escolhaUser
         Caso 1
              i <- 1
              Enquanto (i <= 10) faca
                       Escreva(i, "... ")
                       i<- i + 1
              FimEnquanto
         Caso 2
              i <- 10
              Enquanto (i >= 1) faca
                       Escreva(i, "... ")
                       i <- i - 1
              FimEnquanto
         Caso 3
              escolhaUser <- 3
FimEscolha
Ate (escolhaUser = 3)
fimalgoritmo
