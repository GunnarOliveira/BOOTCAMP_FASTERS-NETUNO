algoritmo "Dados do Usu�rio com Valida��o de Email"
// Fun��o: Captura de dados do usu�rio com valida��o de email no Visualg
// Autor: [Seu nome]
// Data: 29/06/2024

// Se��o de Declara��es
var
   nome, email, senha, confirmacaoSenha, validacao: caractere
   diaNascimento, mesNascimento, anoNascimento, contValidacao: inteiro
   posArroba, posPonto: inteiro
   emailValido: logico

inicio
   Escreval("================================================================")
   Escreval("  _____   ______   _____  _____   _____  _______  ______  _____  ")
   Escreval(" |  __ \ |  ____| / ____||_   _| / ____||__   __||  ____||  __ \ ")
   Escreval(" | |__) || |__   | |  __   | |  | (___     | |   | |__   | |__) |")
   Escreval(" |  _  / |  __|  | | |_ |  | |   \___ \    | |   |  __|  |  _  / ")
   Escreval(" | | \ \ | |____ | |__| | _| |_  ____) |   | |   | |____ | | \ \ ")
   Escreval(" |_|  \_\|______| \_____||_____||_____/    |_|   |______||_|  \_\")
   Escreval("================================================================")
   Escreval()

   // Leitura do nome completo
   Escreva("Informe-nos o seu nome completo: ")
   Leia(nome)
   Se (Compr(nome) < 15) entao
      Escreval("O nome deve ter pelo menos 15 caracteres.")
      Escreva("Por favor, informe o seu nome completo novamente: ")
      Leia(nome)
   FimSe
   Escreval()

   // Leitura da data de nascimento
   Escreva("Dia de nascimento: ")
   Leia(diaNascimento)
   Escreva("M�s de nascimento: ")
   Leia(mesNascimento)
   Escreva("Ano de nascimento: ")
   Leia(anoNascimento)
   Se (anoNascimento > 2006) entao
      Escreval("N�o � poss�vel realizar o cadastro sendo menor de idade. Informe uma data v�lida:")
      Escreva("Dia de nascimento: ")
      Leia(diaNascimento)
      Escreva("M�s de nascimento: ")
      Leia(mesNascimento)
      Escreva("Ano de nascimento: ")
      Leia(anoNascimento)
   FimSe

   // Leitura do endere�o de email com valida��o
   repita
      Escreva("Informe o seu endere�o de E-MAIL: ")
      Leia(email)

      // Inicializar vari�veis de valida��o de email
      posArroba := 0
      posPonto := 0
      emailValido := Falso

      // Verificar a presen�a do "@" e do "."
      para i de 1 ate Compr(email) faca
         se (Caractere(email, i) = '@') entao
            posArroba := i
         senao se (Caractere(email, i) = '.') entao
            posPonto := i
         fimse
      fimpara

      // Validar o formato b�sico de email
      se (posArroba > 0) e (posPonto > posArroba) entao
         emailValido := Verdadeiro

      // Exibir resultado da valida��o
      se (emailValido) entao
         Escreval("Email v�lido.")
      senao
         Escreval("Email inv�lido. Por favor, digite um endere�o de email v�lido.")
      fimse

   ate (emailValido)

   // Leitura e valida��o da senha
   Escreva("Informe uma senha: ")
   leia(senha)
   Escreva("Confirme a sua senha: ")
   leia(confirmacaoSenha)
   contValidacao := 3
   enquanto (senha <> confirmacaoSenha) e (contValidacao > 0) faca
      Escreval("A confirma��o de senha n�o est� igual. Tentativas restantes [", contValidacao, "]")
      Escreva("Informe uma senha: ")
      leia(senha)
      Escreva("Confirme a sua senha: ")
      leia(confirmacaoSenha)
      contValidacao := contValidacao - 1
   fimenquanto

   // Verifica��o final de valida��o de senha
   Se (senha = confirmacaoSenha) entao
      validacao := "Senha v�lida."
   senao
      validacao := "Limite de tentativas excedido. Senha inv�lida."
   FimSe

   // Exibi��o dos dados
   Escreval()
   Escreval("Nome Completo: ", nome)
   Escreval("Data de Nascimento: ", diaNascimento, "/", mesNascimento, "/", anoNascimento)
   Escreval("Endere�o de Email: ", email)
   Escreval(validacao)

fimalgoritmo

