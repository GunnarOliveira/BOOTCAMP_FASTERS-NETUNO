algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 25/06/2024
// Se��o de Declara��es 
var
    quantidadeAlunos, contador:inteiro
    notaAluno, maior:real
    melhorAluno, nomeAluno:caractere
inicio
// Se��o de Comandos
contador <- 1
Escreval("----------------------")
Escreval("ESCOLA SANTA PACIENCIA")
Escreval("----------------------")

Escreva("Quantos alunos a turma tem? ")
leia(quantidadeAlunos)

Enquanto (contador <= quantidadeAlunos) faca
 Escreval("------------------")
 Escreval("Aluno ", contador)
 Escreva("Nome do aluno: ")
 leia(nomeAluno)
 Escreva("Nota de ", nomeAluno,": ")
 leia(notaAluno)
 
 Se (notaAluno > maior) entao
    maior <- notaAluno
    melhorAluno <- nomeAluno
 FimSe

 contador <- contador + 1
FimEnquanto

Escreval("O melhor aproveitamento foi de ",melhorAluno," com a nota " ,maior)
fimalgoritmo
