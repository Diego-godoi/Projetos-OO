import 'Bateria.dart';
import 'calculadora_generica.dart';

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
    var conta = expressao.split(" ");
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
      default:
        print("expressao invalida");
    }
  }

  void tela(double resultado) {
    print("O resultado da expressao é igual a $resultado");
  }
}