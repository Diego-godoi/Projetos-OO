import 'Bateria.dart';
import 'IMC.dart';

void main(){
  IMC calculadora = IMC();
  Bateria bateria = Bateria(10);
  double peso = calculadora.peso("70");
  double altura = calculadora.altura("1.90");
  calculadora.igual(peso,altura);
}