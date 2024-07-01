algoritmo "DissecandoMatriz"
// Função :
// Autor :
// Data : 29/06/2024
// Seção de Declarações
var
matriz: vetor [1..4,1..4] de inteiro
i,j,c:inteiro
escolhaMenu:caractere
inicio
// Seção de Comandos
Para i <- 1 ate 4 faca
   Para j <- 1 ate 4 faca
      matriz[i,j] <- j
      Se(i >= 2) entao
         matriz[i,j] <- c + j
      FimSe
      Se (i = 3) entao
         matriz[i,j] <- j
      FimSe
      Se (i = 4) entao
         matriz[i,j] <- c + j
      FimSe
   FimPara
   c <- matriz[i,4]
FimPara
Repita

   Escreval()
   Escreval("MENU DE OPCOES")
   Escreval("=======================")
   Escreval("[1] Matriz inteira")
   Escreval("[2] Diagonal Principal")
   Escreval("[3] Triangulo Superior")
   Escreval("[4] Triangulo Inferior")
   Escreval("[5] SAIR")
   Escreva("========= OPCAO: ")
   leia(escolhaMenu)

   Escolha escolhaMenu
   Caso "1"
      LimpaTela()
      Escreval(" _               _ ")
      Escreval("|                 |")
      Para i <- 1 ate 4 faca
         Para j <- 1 ate 4 faca
            Escreva(matriz[i,j]:4)
         FimPara
         Escreval()
      FimPara
      Escreval("|_               _|")


   Caso "2"
      LimpaTela()
      Escreval(" _               _ ")
      Escreval("|                 |")
      Para i <- 1 ate 4 faca
         Para j <- 1 ate 4 faca
            Se (i <> j) entao
               Escreva(" ":4)
            Senao
               Escreva(matriz[i,j]:4)
            FimSe
         FimPara
         Escreval()
      FimPara
      Escreval("|_               _|")
   Caso "3"
      LimpaTela()
      Escreval(" _               _ ")
      Escreval("|                 |")


      Para j <- 1 ate 4 faca
         Se (j = 1) entao
            Escreva(" ":4)
         Senao
            Escreva(matriz[1,j]:4)
         FimSe
      FimPara
      Escreval()
      Para j <- 1 ate 4 faca
         Se (j < 3) entao
            Escreva(" ":4)
         Senao
            Escreva(matriz[2,j]:4)
         FimSe
      FimPara
      Escreval()
      Para j <- 1 ate 4 faca
         Se (j < 4) entao
            Escreva(" ":4)
         Senao
            Escreva(matriz[3,j]:4)
         FimSe
      FimPara
      Escreval()
      Escreval()
      Escreval("|_               _|")


   Caso "4"
      LimpaTela()
      Escreval(" _               _ ")
      Escreval("|                 |")
      Para j <- 1 ate 4 faca
         Escreva(" ":4)
      FimPara
      Escreval()
      Para j <- 1 ate 4 faca
         Se(j > 1) entao
            Escreva(" ":4)
         Senao
            Escreva(matriz[2,1]:4)
         FimSe
      FimPara
      Escreval()
      Para j <- 1 ate 4 faca
         Se (j >= 3) entao
            Escreva(" ":4)
         Senao
            Escreva(matriz[3,j]:4)
         FimSe
      FimPara
      Escreval()
      Para j<- 1 ate 4 faca
         Se (j = 4) entao
            Escreva(" ":4)
         Senao
            Escreva(matriz[4,j]:4)
         FimSe
      FimPara
      Escreval()
      Escreval("|_               _|")
   Caso "5"
      LimpaTela()
      Escreval()
      Escreva("Encerrado Zzz")
      escolhaMenu <- "encerrar"
      Escreval()
      Escreval()
   FimEscolha
Ate(escolhaMenu = "encerrar")
fimalgoritmo
