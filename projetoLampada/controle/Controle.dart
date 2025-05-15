import '../bateria/Bateria.dart';
import '../lampada/Lampada.dart';
import 'IControle.dart';

class Controle implements IControle {
  @override
  Bateria bateria;
  Lampada lampada;

  Controle(this.bateria, this.lampada);

  @override
  void desligar() {
    print("Controle: desligando a lampada");
    ensiarSinal(1);
  }

  @override
  void ligar() {
    print("Controle: ligando a lampada");
    ensiarSinal(2);
  }

  @override
  void itensidade() {
    print("Controle: mudando a intensidade");
    ensiarSinal(3);
  }

  @override
  void mais30m() {
    print("Controle: mais 30 minutos");
    ensiarSinal(4);
  }

  @override
  void ensiarSinal(int number) {
    lampada.entrada_sinal(number);
  }
}
