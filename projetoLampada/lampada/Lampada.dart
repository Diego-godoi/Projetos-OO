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
    tempo = 0;
    if (esta_ligada == 0) {
      print("Lâmpada: ligada");
      esta_ligada = 100;
      return;
    }
    print("Lampada: desligada");
    esta_ligada = 0;
  }

  @override
  void entrada_sinal(int id) {
    switch (id) {
      case 1:
        print("Lampada: Desligando a lampada");
        esta_ligada = 0;
        tempo = 0;
        break;
      case 2:
        print("Lampada: Ligando a lampada");
        esta_ligada = 1;
        tempo = 0;
        break;
      case 3:
        print("Lampada: Aumentando a intensidade");
        esta_ligada = (esta_ligada <= 50) ? 100 : 50;
        break;
      case 4:
        print("Lampada: Tempo ajustado para 30 minutos");
        esta_ligada = 100;
        tempo = 30;
        break;
      default:
        print("Lampada: Sinal desconhecido: $id");
    }
  }

  void estadoLampada() {
    print("A lampada está em $esta_ligada");
    print("O tempo da lampada está em $tempo");
    bateria.estado();
  }
}
