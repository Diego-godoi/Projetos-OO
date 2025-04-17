void main(){
  IMC calculadora = IMC();
  Bateria Bateria = Bateria(10);
  double peso = calculadora.peso(70);
  double altura = calculadora.altura(1.90);
  calculadora.igual(peso,altura);
}