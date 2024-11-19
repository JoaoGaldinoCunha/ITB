import java.util.Scanner;

public class Exercicios7 {
    public static void main(String[] args) {


        double valortotal, parcelas, divisaparce;

        Scanner XC = new Scanner(System.in);

        System.out.println("Informar valor da compra: ");
        valortotal = XC.nextDouble();
        System.out.println("Informar o valor quantidade de parcelas: ");
        parcelas = XC.nextDouble();

        if (parcelas <= 5 && parcelas >= 5) {
            System.out.println("ERRO");

        }
        divisaparce=valortotal/parcelas;
        System.out.println("O VALOR DE PARCELAS É" + divisaparce);

    }
}