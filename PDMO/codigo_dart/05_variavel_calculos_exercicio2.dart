import 'dart:io';

void main (){
  
    double salario=1000,porcentagemAumento=0.10,aumento,salariototal;
    aumento=salario*porcentagemAumento;
    salariototal=salario+aumento;
    print('10% do salario de R\$ $salario é R\$ $salariototal');
}