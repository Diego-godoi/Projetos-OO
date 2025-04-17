class IMC implements IIMC{
  tela(double resultado){
    print("O IMC é: $resultado");
  }
  igual(double peso, double altura){
    double resultado = peso/(altura*altura);
    tela(resultado);
  }
  double peso(String peso){
    return parseDouble(peso);
  }
  double altura(String altura){
    return parseDouble(altura)
  }
}