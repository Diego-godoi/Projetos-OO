import '../bateria/Bateria.dart';

abstract class IControle {
  late Bateria bateria;
  void desligar() {}
  void ligar() {}
  void mais30m() {}
  void itensidade() {}
  void ensiarSinal(int number) {}
}
