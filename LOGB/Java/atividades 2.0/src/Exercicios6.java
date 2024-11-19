import java.util.Scanner;

public class Exercicios6 {
    public static void main(String[] args) {


        double troco,valordado,valordoproduto;

        Scanner XC = new Scanner(System.in);

        System.out.println("Informar valor dado para o caixa: ");
        valordado = XC.nextDouble();
        System.out.println("Informar o valor do produto: ");
        valordoproduto = XC.nextDouble();

        if (valordoproduto<=valordado){
            troco = valordado-valordoproduto;
            System.out.println( "O valor do troco será:" + troco);
        }
    }



}