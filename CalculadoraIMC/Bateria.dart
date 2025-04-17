import 'dart:io';
class Bateria{
  int carga;
  Bateria(this.carga);

  estado(){
    if(carga > 0){
      print("Bateria carregada...")
      return;
    }
    exit(1);
  }
}