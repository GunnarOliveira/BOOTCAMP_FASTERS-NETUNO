algoritmo "ReservandoEspacoCinema"
// Função :
// Autor :
// Data : 26/06/2024
// Seção de Declarações
var
vetLugares: vetor[1..10] de caractere
vetLugaresOcupados: vetor[1..10] de caractere
resposta,escolhaCadeira:caractere
i:inteiro
inicio
// Seção de Comandos
vetLugares[1] <- "B1"
vetLugares[2] <- "B2"
vetLugares[3] <- "B3"
vetLugares[4] <- "B4"
vetLugares[5] <- "B5"
vetLugares[6] <- "B6"
vetLugares[7] <- "B7"
vetLugares[8] <- "B8"
vetLugares[9] <- "B9"
vetLugares[10] <- "B10"

Repita
   Para i <- 1 ate 10 faca
      Escreva("[ ",vetLugares[i]," ]")
   FimPara
   Escreval("")
   Escreval("--------------------------------------------------------------")

   Escreval("")
   Escreva("Reservar a cadeira: ")
   leia(escolhaCadeira)
   escolhaCadeira <- Maiusc(escolhaCadeira)


   Para i<- 1 ate 10 faca
      Se (escolhaCadeira = vetLugares[i]) entao
         vetLugaresOcupados[i] <- vetLugares[i]
         vetLugares[i] <- "---"
         Escreval("cadeira B",i," RESERVADA!")
      Senao
          Se (escolhaCadeira = vetLugaresOcupados[i]) entao
             Escreval("ERRO: Lugar Ocupado!")
          FimSe
      FimSe
      

   FimPara

   Escreva("Deseja Continuar? [S/N]: ")
   leia(resposta)
   limpaTela()
Ate(resposta = "n")
fimalgoritmo
