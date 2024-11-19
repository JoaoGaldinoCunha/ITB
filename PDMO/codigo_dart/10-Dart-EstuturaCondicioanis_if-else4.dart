import 'dart:io';

void main() {
  print('Digite nome:');
  String? nome = stdin.readLineSync();
  print('Informe CPF');
  String? cpf = stdin.readLineSync();

 if(nome == null || nome.isEmpty || cpf==null || cpf.isEmpty){
print("erro informe dados corretamente");
 }
 else if( nome == 'Ivar' && cpf=='100.200.300-10'){
  print('Bem vindo $nome');
 }
 else{
  print('Nome e CPF incorretos,informa os dados');
 }

}