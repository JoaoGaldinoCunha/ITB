import 'dart:io';

void main() {
  print('Tipo de Pagamento: PIX OU CARTÃO');
  String? tipo = stdin.readLineSync();

  print('Informe se é CC [CONTA CORRENTE] OU CP[CONTA POUPANÇA]');
  String? contaTipo = stdin.readLineSync();

if (contaTipo == null|| contaTipo.isEmpty || tipo == null||tipo.isEmpty) {

print("ERRO:Informe todos os dados não deixe em branco");
}
if(contaTipo!="CC" ||  contaTipo!="CP"){
print("ERRO:Tipo de conta inválido");
}

if(contaTipo=="CC" &&  tipo=="PIX"){
print("Pagamento com pix realizado com sucesso para conta corrente");
}
else if(contaTipo=="CP" &&  tipo=="PIX"){
print("Pagamento com pix realizado com sucesso para conta poupança");
}
else if(contaTipo=="CC" &&  tipo=="CARTÃO"){
  print("Pagamento com cartao realizado com sucesso para conta corrente");
}
else if(contaTipo=="CP" &&  tipo=="CARTÃO"){
  print("Pagamento com cartao realizado com sucesso para conta poupança");
}
}