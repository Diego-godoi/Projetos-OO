import 'dart:io';

abstract class CalculadoraGenerica {
  void botao_somar(double numero1, double numero2) {}

  void botao_subtrair(double numero1, double numero2) {}

  void botao_multiplicar(double numero1, double numero2) {}

  void botao_dividir(double numero1, double numero2) {}

  void botao_igual(String expressao) {}

  void tela(double resultado) {}
}

class CalculadoraCientifica implements CalculadoraGenerica {
  Bateria bateria;

  CalculadoraCientifica(this.bateria);

  void botao_somar(numero1, numero2) {
    double resultado = numero1 + numero2;
    tela(resultado);
  }

  void botao_subtrair(numero1, numero2) {
    double resultado = numero1 - numero2;
    tela(resultado);
  }

  void botao_multiplicar(numero1, numero2) {
    double resultado = numero1 * numero2;
    tela(resultado);
  }

  void botao_dividir(numero1, numero2) {
    if (numero2 == 0) {
      print("Divisao indefinida");
      return;
    }
    double resultado = numero1 / numero2;
    tela(resultado);
  }

  void botao_igual(expressao) {
    bateria.estado();
    var conta = expressao.split('');
    var numero1 = double.parse(conta[0]);
    var operacao = conta[1];
    var numero2 = double.parse(conta[2]);

    switch (operacao) {
      case "+":
        botao_somar(numero1, numero2);
        break;
      case "-":
        botao_subtrair(numero1, numero2);
        break;
      case "/":
        botao_dividir(numero1, numero2);
        break;
      case "*":
        botao_multiplicar(numero1, numero2);
        break;
    }
  }

  void tela(double resultado) {
    print("O resultado da expressao é igual a $resultado");
  }
}

class Bateria {
  int carga;

  Bateria(this.carga);
  void estado() {
    if (carga <= 0) {
      exit(1);
    }
    print("Bateria carregada");
  }
}

void main() {
  Bateria bateria = Bateria(100);
  CalculadoraCientifica calculadoraCientifica = CalculadoraCientifica(bateria);
  calculadoraCientifica.botao_igual("2 /0");
}
