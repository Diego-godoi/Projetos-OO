import 'Bateria.dart';

abstract class IIMC{
  late Bateria Bateria;
  void tela(double resultado);
  void igual(double peso, double altura);
  double peso(String peso);
  double altura(String altura);
}