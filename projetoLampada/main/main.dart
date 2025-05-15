import '../bateria/Bateria.dart';
import '../controle/Controle.dart';
import '../lampada/Lampada.dart';

void main(){
  Bateria bateria = Bateria(100);
  Lampada lampada = Lampada(bateria, 0, 0);
  Controle controle = Controle(bateria, lampada);

  lampada.estadoLampada();
  controle.itensidade();
  print("----------------");
  controle.itensidade();
  lampada.estadoLampada();
}