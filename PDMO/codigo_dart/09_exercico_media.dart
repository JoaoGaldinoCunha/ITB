import 'dart:io';

void main() {
  print('Entre com a 1º nota:');
  String? notaatv = stdin.readLineSync();
  print('Entre com a 2º nota:');
  String? nota1 = stdin.readLineSync();
  print('Entre com a nota do trabalho:');
  String? nota2 = stdin.readLineSync();

  try {
    double valor1 = double.parse(nota1!);
    double valor2 = double.parse(nota2!);
    double valor3 = double.parse(notaatv!);

    double somaNotas = valor1 + valor2 + valor3;
    double media = somaNotas / 3;
    print('Notas fornecida\n1º --> $valor1 \n2º-->$valor2\nTrabalho-->$valor3\nMedia===>:$media');
  } catch (teste) {
    print("Nãp digite valor em branco e digite somente numeros");
  }
}
