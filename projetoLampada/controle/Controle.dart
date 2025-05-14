import '../bateria/Bateria.dart';
import 'IControle.dart';

class Controle implements IControle {
  @override
  Bateria bateria;
  Controle(this.bateria);
  @override
  void desligar() {}

  @override
  void ensiarSinal(int number, bool estado) {}

  @override
  void itensidade() {}

  @override
  void ligar() {}

  @override
  void mais30m() {}
}
