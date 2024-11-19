import 'dart:io';

void main() {
  print("Informe um nome");
  String? nome = stdin.readLineSync();

  if (nome == null || nome.isEmpty) {
    print('Erro :O nome não pode estar vazio');

  }
    else if(!_isAlpha(nome)){
      print('Erro:O nome deve conter apenas letras');
    }
    else{
      print("Opa,$nome");
    }
}
bool _isAlpha(String str){
  final RegExp regex=RegExp(r'^[a-zA-Z]+$');
  return regex.hasMatch(str);
}
