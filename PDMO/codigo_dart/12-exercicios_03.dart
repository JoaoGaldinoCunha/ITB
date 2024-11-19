import 'dart:io';

void main() {
  print('Informe a usuario');
  String? usuario = stdin.readLineSync();

  print('Informe a senha');
  String? senha = stdin.readLineSync();
if(usuario == null ||  senha == null || usuario.isEmpty || senha.isEmpty) {
print('Usuario e senha não podem ser nulos');
}
  else if(usuario=='admin' &&  senha=='123'){
  print('Bem vindo, usuario');
}

else{
  print('Usuario ou senha invalido');
}
}