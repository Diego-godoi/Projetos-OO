import 'dart:io';

class Bateria {
  int carga;
  Bateria(this.carga);

  void estado() {
    if (carga <= 0) {
      exit(1);
    }
    print("Bateria esta em $carga");
  }
}
