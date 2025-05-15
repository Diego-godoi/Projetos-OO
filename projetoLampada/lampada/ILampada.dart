import '../bateria/Bateria.dart';

abstract class Ilampada {
  late Bateria bateria;

  void entrada_sinal(int id) {}
  void botao_ligar_desligar() {}
}
