import '../bateria/Bateria.dart';
import 'IControle.dart';

class Controle implements IControle {
  @override
  Bateria bateria;
  Controle(this.bateria);
  @override
  void desligar() {
    // TODO: implement desligar
  }

  @override
  void ensiarSinal(int number, bool estado) {
    // TODO: implement ensiarSinal
  }

  @override
  void itensidade() {
    // TODO: implement itensidade
  }

  @override
  void ligar() {
    // TODO: implement ligar
  }

  @override
  void mais30m() {
    // TODO: implement mais30m
  }
}
