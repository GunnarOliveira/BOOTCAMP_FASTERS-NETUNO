algoritmo "EstruturaDeRepeticaoExercicio_03"
// Função :
// Autor :
// Data : 25/06/2024
// Seção de Declarações 
var
   sexo,cor,escolhaUser:caractere
   idade,contadorM,contadorF: inteiro
inicio
// Seção de Comandos 
Repita

Escreval("=====================")
Escreval(" SELETOR DE PESSOAS  ")
Escreval("=====================")
Escreva("Qual o Sexo? [M/F] ")
Leia(sexo)
Escreva("Qual a idade? ")
Leia(idade)
Escreval("Qual a cor do cabelo?")
Escreval("---------------------")
Escreval("[1] Preto")
Escreval("[2] Castanho")
Escreval("[3] Loiro")
Escreval("[4] Ruivo")
Leia(cor)

Se(sexo = "m") e (idade > 18) e (cor = "2") entao
        contadorM <- contadorM + 1
Senao
     Se (sexo = "f") e (idade >= 25) e (idade <= 30) e (cor = "3") entao
        contadorF <- contadorF + 1
     FimSe
FimSe

Escreva("Quer continuar? [S/N] ")
leia(escolhaUser)
LimpaTela()

Ate(escolhaUser = "n")


Escreval("-----------------------------")
Escreval("RESULTADO FINAL")
Escreval("-----------------------------")
Escreval("Total de homens com mais de 18 anos e cabelos castanho:",contadorM)
Escreval("Total de mulheres entre 25 e 30 anos e cabelos loiros:",contadorF)
fimalgoritmo
