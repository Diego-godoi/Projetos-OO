class Pessoa {
  String nome;
  int cpf;
  Coracao coracao = Coracao();

  Pessoa(this.nome, this.cpf);

  void estadoPessoa() {
    print("Nome: $nome - cpf: $cpf");
  }
}

class Coracao {
  Coracao() {
    print("Estou batendo! Tun...Tun");
  }
}

main() {
  print("Hello Word!!");
  Pessoa aluno = Pessoa("Diego", 233232332);
  aluno.estadoPessoa();
}
