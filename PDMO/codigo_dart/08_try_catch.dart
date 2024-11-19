import 'dart:io';

void main() {
  try {
    int resultado = 10 ~/ 0;
    print(resultado);
  } catch (errorGerado) {
    print('ocorreu um erro: $errorGerado');
  } finally {
    print('Bloco Finally executado');
  }
}
