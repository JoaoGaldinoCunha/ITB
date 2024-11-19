import java.util.Scanner;

public class Exercicios5 {
    public static void main(String[] args) {


        double idadefinal,ano,anoatual;

        Scanner XC = new Scanner(System.in);

        System.out.println("Informar o ano de nascimento: ");
        ano = XC.nextDouble();
        System.out.println("Informar o ano atual: ");
        anoatual = XC.nextDouble();

        if (anoatual>=ano){
            idadefinal = anoatual-ano;
            System.out.println( "O valor convertido será:" + idadefinal);
        }
    }



}