import 'Bateria.dart';
import 'Calculadora_cientifica.dart';

void main() {
  Bateria bateria = Bateria(100);
  CalculadoraCientifica calculadoraCientifica = CalculadoraCientifica(bateria);
  calculadoraCientifica.botao_igual("2 * 100");
}