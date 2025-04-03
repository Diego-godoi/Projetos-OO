class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}

class Aluno extends Pessoa {
  String matricula;
  int nota;
            
  Aluno(String nome, int idade, this.matricula, this.nota) : super(nome, idade);
}



void main() {
  Aluno aluno = Aluno("diego",12,"jslfjasdj",10);
  print(aluno.nome);
}