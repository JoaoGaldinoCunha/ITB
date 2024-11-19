import 'dart:io';

void main() {
  print('Informe o valor:');
  String? valor = stdin.readLineSync();
  int? contador = int.tryParse(valor!);

  if (contador == null) {
    print("O valor não pode ser nulo");
  } else if (!_isAlpha(contador as String)) {
    print("O valor não pode conter letras");
  }
}

bool _isAlpha(String str) {
  final RegExp regex = RegExp(r'^[a-zA-Z]+$');
  return regex.hasMatch(str);
}
