import 'dart:io';

void main() {
  print('Informe sua idade');
  String? entrada = stdin.readLineSync();
  int? valor = int.tryParse(entrada!);

  try {
    valor ?? print("idade invalida");
    valor! < 18 ? print("voce é menor de idade") : print("Voce é maior de idade");
  } catch (e) {
    print('Erro:$e');
  }


}
