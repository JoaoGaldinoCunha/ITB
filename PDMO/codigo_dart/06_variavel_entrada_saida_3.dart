import 'dart:io';

void main (){
    print('Informe seu primeiro nome:');
    String? nome= stdin.readLineSync();
    print('Digite seu sobrenome:');
    String? snome= stdin.readLineSync();
    print('Digite seu idade:');
    String? idade= stdin.readLineSync();
    print('Digite estado que nasceu:');
    String? estado= stdin.readLineSync();
    print('Digite seu RG:');
    String? rg= stdin.readLineSync();
    print('Bem Vindo! $nome $snome,com idade de $idade,\nesta registrado com o RG:$rg,\ne seu nascimento no estado do $estado');
    
}