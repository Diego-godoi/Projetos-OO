abstract class CalculadoraGenerica {
  botao_igual() {}
  tela(double resultado) {}
}

class CalculadoraCientifica implements CalculadoraGenerica {
  @override
  botao_igual() {
    double resultado = 2 + 2;
    tela(resultado);
  }

  @override
  tela(double resultado) {
    print("Resultado = $resultado");
  }
}

void main() {
  // CalculadoraGenerica calculadoraGenerica = CalculadoraGenerica("verde");
  // calculadoraGenerica.botao_igual();

  CalculadoraCientifica calc = CalculadoraCientifica();
  calc.botao_igual();
}