import java.util.Scanner;

public class Exercicios13 {
    public static void main(String[] args) {

        String nome;
        Double rg, idade;

        Scanner XC = new Scanner(System.in);
        System.out.println("Informar seu nome: ");
        nome = XC.nextLine();
        System.out.println("Informar o rg: ");
        rg = XC.nextDouble();
        System.out.println("informe a sua idade.: ");
        idade = XC.nextDouble();
        if (idade < 18) {
            System.out.println("O ACESSO RESTRIO:" + "nome:" + nome + "Idade:" + idade + "rg" + rg);
        } else {
            System.out.println("O ACESSO PERMITIDO:" + "nome:" + nome + "," + "Idade:" + idade + "rg" + rg);
        }
    }
}

