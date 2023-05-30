import '../domain/contato.dart';

List<Contato> loadContatos() {
  return <Contato>[
    Contato(
      imagem: "lib/assets/contato.png",
      nome: "João da Silva",
      email: "joao.silva@gmail.com",
      dataNascimento: "12/06/1996",
      idade: "27 anos",
      telefone: "(16)3384-1029",
    ),
    Contato(
      imagem: "lib/assets/contato.png",
      nome: "Kamily Manuela",
      email: "kamily.manuela@gmail.com",
      dataNascimento: "21/12/1992",
      idade: "30 anos",
      telefone: "(16)3382-3548",
    ),
    Contato(
      imagem: "lib/assets/contato.png",
      nome: "Gustavo Nascimento",
      email: "gustavo.nascimento@gmail.com",
      dataNascimento: "05/02/1989",
      idade: "34 anos",
      telefone: "(16)3382-3550",
    ),
    Contato(
      imagem: "lib/assets/contato.png",
      nome: "Eliseu Bitencourt",
      email: "eliseu.bitencourt@gmail.com",
      dataNascimento: "29/06/1994",
      idade: "28 anos",
      telefone: "(16)3384-1025",
    ),
  ];
}
