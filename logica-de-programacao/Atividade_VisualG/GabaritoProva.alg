algoritmo "GabaritoProva"
// Função :
// Autor :
// Data : 26/06/2024
// Seção de Declarações
var
vetGabarito: vetor[1..5] de caractere
vetQuestao: vetor[1..5] de caractere
vetAluno: vetor[1..5] de caractere
vetNota: vetor[1..5] de real


i,j:inteiro
mediaTurma: real

inicio
// Seção de Comandos

Escreval("------------------------------")
Escreval("PASSO 1 - Cadastro de gabarito")
Escreval("------------------------------")

Para i<- 1 ate 5 faca
   Escreva("Questão",i,": ")
   leia(vetGabarito[i])
FimPara
LimpaTela()

Para i<- 1 ate 5 faca
   Escreval("-------------")
   Escreval("Aluno -",i)
   Escreval("------------")


   Escreva("Nome: ")
   leia(vetAluno[i])
   Escreval("RESPOSTAS DADAS")
   Para j<- 1 ate 5 faca
      Escreva("Questão",j,": ")
      leia(vetQuestao[j])

      Se (vetQuestao[j] = vetGabarito[j]) entao
         vetNota[i] <- vetNota[i] + 2
      FimSe
   FimPara
   LimpaTela
FimPara
Escreval("------------------")
Escreval("NOTAS FINAIS")
Escreval("------------------")

Para i <- 1 ate 5 faca
     Escreval(vetAluno[i]:10,vetNota[i]:3:1)
     mediaTurma <- (mediaTurma + vetNota[i])
FimPara
mediaTurma<- mediaTurma / 5
Escreval("------------------")
Escreva("Media da Turma: ", mediaTurma:3:1)
fimalgoritmo
