import 'dart:io';

void main() {
  print('Informe o primeiro numero');
  String? entrada1 = stdin.readLineSync();
  int? valor = int.tryParse(entrada1!);

    print('Informe o segundo numero');
  String? entrada2 = stdin.readLineSync();
  int? valor2 = int.tryParse(entrada2!);

  print('Informe o segundo numero');
  String? entrada3 = stdin.readLineSync();
  int? valor3 = int.tryParse(entrada3!);

  if(valor == null ||  valor>valor3!|| valor>valor2!) {
  print('Numero um maior');
  }
  else if(valor2 == null ||  valor2>valor3!|| valor2>valor!){
  print('Numero dois maior');

  }
  else if(valor3 == null ||  valor3>valor2!|| valor3>valor!){
      print('Numero tres maior');

  }
}
