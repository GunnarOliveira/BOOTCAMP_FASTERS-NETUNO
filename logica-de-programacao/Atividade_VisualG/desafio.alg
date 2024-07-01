algoritmo "Dados do Usuário com Validação de Email"
// Função: Captura de dados do usuário com validação de email no Visualg
// Autor: [Seu nome]
// Data: 29/06/2024

// Seção de Declarações
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
   Escreva("Mês de nascimento: ")
   Leia(mesNascimento)
   Escreva("Ano de nascimento: ")
   Leia(anoNascimento)
   Se (anoNascimento > 2006) entao
      Escreval("Não é possível realizar o cadastro sendo menor de idade. Informe uma data válida:")
      Escreva("Dia de nascimento: ")
      Leia(diaNascimento)
      Escreva("Mês de nascimento: ")
      Leia(mesNascimento)
      Escreva("Ano de nascimento: ")
      Leia(anoNascimento)
   FimSe

   // Leitura do endereço de email com validação
   repita
      Escreva("Informe o seu endereço de E-MAIL: ")
      Leia(email)

      // Inicializar variáveis de validação de email
      posArroba := 0
      posPonto := 0
      emailValido := Falso

      // Verificar a presença do "@" e do "."
      para i de 1 ate Compr(email) faca
         se (Caractere(email, i) = '@') entao
            posArroba := i
         senao se (Caractere(email, i) = '.') entao
            posPonto := i
         fimse
      fimpara

      // Validar o formato básico de email
      se (posArroba > 0) e (posPonto > posArroba) entao
         emailValido := Verdadeiro

      // Exibir resultado da validação
      se (emailValido) entao
         Escreval("Email válido.")
      senao
         Escreval("Email inválido. Por favor, digite um endereço de email válido.")
      fimse

   ate (emailValido)

   // Leitura e validação da senha
   Escreva("Informe uma senha: ")
   leia(senha)
   Escreva("Confirme a sua senha: ")
   leia(confirmacaoSenha)
   contValidacao := 3
   enquanto (senha <> confirmacaoSenha) e (contValidacao > 0) faca
      Escreval("A confirmação de senha não está igual. Tentativas restantes [", contValidacao, "]")
      Escreva("Informe uma senha: ")
      leia(senha)
      Escreva("Confirme a sua senha: ")
      leia(confirmacaoSenha)
      contValidacao := contValidacao - 1
   fimenquanto

   // Verificação final de validação de senha
   Se (senha = confirmacaoSenha) entao
      validacao := "Senha válida."
   senao
      validacao := "Limite de tentativas excedido. Senha inválida."
   FimSe

   // Exibição dos dados
   Escreval()
   Escreval("Nome Completo: ", nome)
   Escreval("Data de Nascimento: ", diaNascimento, "/", mesNascimento, "/", anoNascimento)
   Escreval("Endereço de Email: ", email)
   Escreval(validacao)

fimalgoritmo

