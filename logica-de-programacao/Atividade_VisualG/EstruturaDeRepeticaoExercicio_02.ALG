algoritmo "semnome"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações 
var
    quantidadeAlunos, contador:inteiro
    notaAluno, maior:real
    melhorAluno, nomeAluno:caractere
inicio
// Seção de Comandos
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
