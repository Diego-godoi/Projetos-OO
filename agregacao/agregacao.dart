class Pessoa {
  String nome;
  int cpf;
  Roupa roupa;

  Pessoa(this.nome, this.cpf, this.roupa);

  void estadoPessoa() {
    print("Nome: $nome - cpf: $cpf - tipo de roupa: ${roupa.tipo}");
  }

  void usar() {
    print("Estou usando um/a ${roupa.tipo}");
  }
}

class Roupa {
  String tipo;

  Roupa({this.tipo = "Sem roupa"});

  void estadoRoupa() {
    print("Tipo da roupa: $tipo");
  }
}

main() {
  print("Hello Word!!");
  Roupa cueca = Roupa(tipo: "Cueca");
  Pessoa aluno = Pessoa("Diego", 233232332, cueca);
  aluno.estadoPessoa();
  aluno.usar();
  cueca.estadoRoupa();
}
