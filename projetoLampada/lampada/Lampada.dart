import '../bateria/Bateria.dart';
import 'ILampada.dart';

class Lampada implements Ilampada {
  @override
  Bateria bateria;
  int esta_ligada = 0;
  int tempo = 0;

  Lampada(this.bateria, this.esta_ligada, this.tempo);

  @override
  void botao_ligar_desligar() {
  }

  @override
  void entrada_sinal(int id) {
  }

  void estadoLampada() {
    print("A lampada está em $esta_ligada");
    print("O tempo da lampada está em $tempo");
    print(bateria.estado());
  }
}
