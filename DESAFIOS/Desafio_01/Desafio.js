const readline = require("readline");
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

async function capturaDadosUsuario() {
  console.log(
    "================================================================"
  );
  console.log(
    "  _____   ______   _____  _____   _____  _______  ______  _____  "
  );
  console.log(
    " |  __ \\ |  ____| / ____||_   _| / ____||__   __||  ____||  __ \\ "
  );
  console.log(
    " | |__) || |__   | |  __   | |  | (___     | |   | |__   | |__) |"
  );
  console.log(
    " |  _  / |  __|  | | |_ |  | |   \\___ \\    | |   |  __|  |  _  / "
  );
  console.log(
    " | | \\ \\ | |____ | |__| | _| |_  ____) |   | |   | |____ | | \\ \\ "
  );
  console.log(
    " |_|  \\_\\|______| \\_____||_____||_____/    |_|   |______||_|  \\_\\"
  );
  console.log(
    "================================================================"
  );
  console.log();

  let nome = "";
  let dataNascimento = "";
  let diaNascimento = 0,
    mesNascimento = 0,
    anoNascimento = 0;
  let email = "",
    senha = "",
    confirmacaoSenha = "";
  let tentativasSenha = 3;
  let caracteristicasUsuario = {
    nome: "",
    dataNascimento: "",
    email: "",
  };
  let caracteristicasAvatar = {
    classe: "",
    atributosClasse: {},
    corCabelo: "",
    corPele: "",
    corRoupa: "",
    montaria: "",
    atributosMontaria: {},
  };

  function leia(mensagem) {
    return new Promise((resolve) => {
      rl.question(mensagem, (answer) => {
        resolve(answer);
      });
    });
  }

  function validarEmail(email) {
    const posArroba = email.indexOf("@");
    const posPonto = email.lastIndexOf(".");
    return posArroba > 0 && posPonto > posArroba;
  }

  async function capturarNome() {
    while (nome.length < 15) {
      nome = await leia("Informe-nos o seu nome completo: ");
      if (nome.length < 15) {
        console.log("\n*********************************************");
        console.log("* O nome deve ter pelo menos 15 caracteres. *");
        console.log("*********************************************\n");
      }
    }
    caracteristicasUsuario.nome = nome;
  }

  async function capturarDataNascimento() {
    let dataValida = false;
    while (!dataValida) {
      dataNascimento = await leia("Data de Nascimento (DD/MM/AAAA): ");
      const partes = dataNascimento.split("/");
      if (partes.length === 3) {
        diaNascimento = parseInt(partes[0]);
        mesNascimento = parseInt(partes[1]);
        anoNascimento = parseInt(partes[2]);
        const hoje = new Date();
        const dataNasc = new Date(
          anoNascimento,
          mesNascimento - 1,
          diaNascimento
        );
        if (hoje.getFullYear() - dataNasc.getFullYear() > 18) {
          dataValida = true;
        } else {
          console.log("\n*************************************************");
          console.log("* Não é possível cadastrar sendo menor de idade. *");
          console.log("* Informe uma data válida.                      *");
          console.log("*************************************************\n");
        }
      } else {
        console.log("\n*********************************************");
        console.log("* Formato inválido. Use DD/MM/AAAA.         *");
        console.log("*********************************************\n");
      }
    }
    caracteristicasUsuario.dataNascimento = dataNascimento;
  }

  async function capturarEmail() {
    let emailValido = false;
    while (!emailValido) {
      email = await leia("Informe o seu endereço de E-MAIL: ");
      emailValido = validarEmail(email);
      if (!emailValido) {
        console.log("\n*********************************************");
        console.log("* Email inválido. Por favor, insira um válido. *");
        console.log("*********************************************\n");
      }
    }
    caracteristicasUsuario.email = email;
  }

  async function capturarSenha() {
    do {
      senha = await leia("Informe uma senha: ");
      confirmacaoSenha = await leia("Confirme a sua senha: ");
      tentativasSenha--;
      if (senha !== confirmacaoSenha && tentativasSenha > 0) {
        console.log(
          "\n********************************************************"
        );
        console.log(
          `* A confirmação de senha não está igual. Tentativas restantes [${tentativasSenha}] *`
        );
        console.log(
          "********************************************************\n"
        );
      }
    } while (senha !== confirmacaoSenha && tentativasSenha > 0);

    if (senha !== confirmacaoSenha) {
      console.log("\n*************************************************");
      console.log("* Limite de tentativas excedido. Programa encerrado. *");
      console.log("*************************************************\n");
      rl.close();
      process.exit(1);
    } else {
      console.log("\n**********************");
      console.log("* Senha válida.      *");
      console.log("**********************\n");

      mostrarInformacoesUsuario();

      await efetuarLogin();
    }
  }

  async function efetuarLogin() {
    console.log("                                    \n");
    console.log(" _       ___    ____  ___  _   _    ");
    console.log("| |     / _ \\  / ___||_ _|| \\ | | _ ");
    console.log("| |    | | | || |  _  | | |  \\| |(_)");
    console.log("| |___ | |_| || |_| | | | | |\\  | _ ");
    console.log("|_____| \\___/  \\____||___||_| \\_|(_)\n");
    console.log("=========================================\n");

    let emailLogin = await leia("Informe o seu e-mail para login: ");
    let senhaLogin = await leia("Informe a sua senha para login: ");

    if (emailLogin === email && senhaLogin === senha) {
      console.log("\nLogin efetuado com sucesso!\n");

      console.log(
        " ____   _                  ____                         \n" +
          "|  _ \\ | |  __ _  _   _   / ___|  __ _  _ __ ___    ___ \n" +
          "| |_) || | / _` || | | | | |  _  / _` || '_ ` _ \\  / _ \\\n" +
          "|  __/ | || (_| || |_| | | |_| || (_| || | | | | ||  __/\n" +
          "|_|    |_| \\__,_| \\__, |  \\____| \\__,_||_| |_| |_| \\___|\n" +
          "                  |___/                                 \n"
      );
      await escolherClasse();
      await capturarCaracteristicasAvatar();
      await escolherMontaria();
      mostrarTabela();
    } else {
      console.log("\n*********************************************");
      console.log("* Email ou senha incorretos. Tente novamente. *");
      console.log("*********************************************\n");
      await efetuarLogin();
    }
  }

  async function escolherClasse() {
    console.log("\nEscolha a classe para jogar:");
    console.log("1) Paladino [lança]");
    console.log("2) Paladino [escudo]");
    console.log("3) Atirador [Arma]");
    console.log("4) Guerreiro [Espada e Escudo]");
    console.log("5) Bárbaro [Machado ou Marreta]");
    console.log("6) Arqueiro [Arco]");
    console.log();

    let opcaoClasse = await leia("Digite o número da classe desejada: ");
    console.log();

    switch (opcaoClasse) {
      case "1":
        caracteristicasAvatar.classe = "Paladino [lança]";
        caracteristicasAvatar.atributosClasse = {
          Vida: 85,
          Mana: 35,
          "Velocidade de Ataque": 1.25,
        };
        console.log("Você escolheu: Paladino [lança]");
        break;
      case "2":
        caracteristicasAvatar.classe = "Paladino [escudo]";
        caracteristicasAvatar.atributosClasse = {
          Vida: 85,
          Mana: 35,
          "Defesa Aumentada": true,
        };
        console.log("Você escolheu: Paladino [escudo]");
        break;
      case "3":
        caracteristicasAvatar.classe = "Atirador [Arma]";
        caracteristicasAvatar.atributosClasse = {
          Vida: 75,
          Mana: 50,
          "Velocidade de Ataque": 2.0,
        };
        console.log("Você escolheu: Atirador [Arma]");
        break;
      case "4":
        caracteristicasAvatar.classe = "Guerreiro [Espada e Escudo]";
        caracteristicasAvatar.atributosClasse = {
          Vida: 90,
          Mana: 30,
          "Defesa Aumentada": "+100",
        };
        console.log("Você escolheu: Guerreiro [Espada e Escudo]");
        break;
      case "5":
        caracteristicasAvatar.classe = "Bárbaro [Machado ou Marreta]";
        caracteristicasAvatar.atributosClasse = {
          Vida: 95,
          Mana: 25,
          "Velocidade de Ataque": 1.75,
        };
        console.log("Você escolheu: Bárbaro [Machado ou Marreta]");

        let opcaoArma = await leia("Escolha a arma (Machado ou Marreta): ");
        console.log();
        if (opcaoArma.toLowerCase() === "machado") {
          caracteristicasAvatar.atributosClasse.Arma = "Machado";
        } else if (opcaoArma.toLowerCase() === "marreta") {
          caracteristicasAvatar.atributosClasse.Arma = "Marreta";
        } else {
          console.log("\nOpção inválida. Escolha novamente.\n");
          await escolherClasse();
          return;
        }
        console.log(
          `Você escolheu: ${caracteristicasAvatar.atributosClasse.Arma}`
        );
        break;
      case "6":
        caracteristicasAvatar.classe = "Arqueiro [Arco]";
        caracteristicasAvatar.atributosClasse = {
          Vida: 75,
          Mana: 40,
          "Velocidade de Ataque": 1.0,
        };
        console.log("Você escolheu: Arqueiro [Arco]");
        break;
      default:
        console.log("Opção inválida. Escolha novamente.\n");
        await escolherClasse();
        return;
    }
  }

  async function capturarCaracteristicasAvatar() {
    console.log("\nAgora, personalize o seu avatar:");

    caracteristicasAvatar.corCabelo = await escolherCor("Cor do Cabelo");
    caracteristicasAvatar.corPele = await escolherCor("Cor da Pele");
    caracteristicasAvatar.corRoupa = await escolherCor("Cor da Roupa");
  }

  async function escolherCor(tipo) {
    console.log(`Escolha a ${tipo}:`);
    console.log("1) Preto");
    console.log("2) Branco");
    console.log("3) Vermelho");
    console.log("4) Azul");
    console.log("5) Verde");
    console.log();

    let opcaoCor = await leia(`Digite o número da cor de ${tipo}: `);
    console.log();

    switch (opcaoCor) {
      case "1":
        return "Preto";
      case "2":
        return "Branco";
      case "3":
        return "Vermelho";
      case "4":
        return "Azul";
      case "5":
        return "Verde";
      default:
        console.log("Opção inválida. Escolha novamente.\n");
        return await escolherCor(tipo);
    }
  }

  async function escolherMontaria() {
    console.log("\nEscolha a montaria para o seu avatar:");
    console.log("1) Cavalo [Velocidade Alta]");
    console.log("2) Dragão [Voo e Fogo]");
    console.log("3) Unicórnio [Magia e Velocidade Média]");
    console.log("4) Tigre [Agilidade e Velocidade Alta]");
    console.log("5) Griffon [Voo e Combate]");
    console.log();

    let opcaoMontaria = await leia("Digite o número da montaria desejada: ");
    console.log();

    switch (opcaoMontaria) {
      case "1":
        caracteristicasAvatar.montaria = "Cavalo";
        caracteristicasAvatar.atributosMontaria = {
          Velocidade: "Alta",
          Resistencia: "Média",
        };
        console.log("Você escolheu: Cavalo");
        break;
      case "2":
        caracteristicasAvatar.montaria = "Dragão";
        caracteristicasAvatar.atributosMontaria = {
          Velocidade: "Média",
          Resistencia: "Alta",
          Habilidades: ["Voo", "Sopro de Fogo"],
        };
        console.log("Você escolheu: Dragão");
        break;
      case "3":
        caracteristicasAvatar.montaria = "Unicórnio";
        caracteristicasAvatar.atributosMontaria = {
          Velocidade: "Média",
          Resistencia: "Baixa",
          Habilidades: ["Magia", "Velocidade Média"],
        };
        console.log("Você escolheu: Unicórnio");
        break;
      case "4":
        caracteristicasAvatar.montaria = "Tigre";
        caracteristicasAvatar.atributosMontaria = {
          Velocidade: "Alta",
          Resistencia: "Média",
          Habilidades: ["Agilidade", "Velocidade Alta"],
        };
        console.log("Você escolheu: Tigre");
        break;
      case "5":
        caracteristicasAvatar.montaria = "Griffon";
        caracteristicasAvatar.atributosMontaria = {
          Velocidade: "Alta",
          Resistencia: "Alta",
          Habilidades: ["Voo", "Combate"],
        };
        console.log("Você escolheu: Griffon");
        break;
      default:
        console.log("Opção inválida. Escolha novamente.\n");
        await escolherMontaria();
        return;
    }
  }

  function mostrarInformacoesUsuario() {
    console.log("===============================================");
    console.log("=== Informações Cadastradas ===");
    console.log("Nome: ", caracteristicasUsuario.nome);
    console.log("Data de Nascimento: ", caracteristicasUsuario.dataNascimento);
    console.log("Email: ", caracteristicasUsuario.email);
    console.log("===============================================\n");
  }

  function mostrarTabela() {
    console.log("===============================================");
    console.log("================= Avatar Criado ===============");
    console.log("===============================================");
    console.log("Classe: ", caracteristicasAvatar.classe);
    console.log("Atributos da Classe: ", caracteristicasAvatar.atributosClasse);
    console.log("Cor do Cabelo: ", caracteristicasAvatar.corCabelo);
    console.log("Cor da Pele: ", caracteristicasAvatar.corPele);
    console.log("Cor da Roupa: ", caracteristicasAvatar.corRoupa);
    console.log("Montaria: ", caracteristicasAvatar.montaria);
    console.log(
      "Atributos da Montaria: ",
      caracteristicasAvatar.atributosMontaria
    );
    console.log("===============================================\n");

    rl.close();
  }

  await capturarNome();
  await capturarDataNascimento();
  await capturarEmail();
  await capturarSenha();
}

capturaDadosUsuario();
