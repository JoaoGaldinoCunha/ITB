import java.util.Scanner;

public class Exercicios15 {
    public static void main(String[] args) {

        Double n1, n2,total;
        int escolha;


        Scanner XC = new Scanner(System.in);
        System.out.println("Informar seu primeiro numero: ");
        n1 = XC.nextDouble();
        System.out.println("Informar o segundo numero: ");
        n2 = XC.nextDouble();
        System.out.println("Escolha 1[+] 2[-] 3[/] 4[.]");
        escolha = XC.nextInt();
        switch (escolha) {
            case 1: {
                total = n1 + n2;
                System.out.println("O resultado é:" + total);
                break;
            }
            case 2: {
                total = n1 - n2;
                System.out.println("O resultado é:" + total);
                break;
            }
            case 3: {
                total = n1/n2;
                System.out.println("O resultado é:" + total);
                break;
            }
            case 4: {
                total = n1*n2;
                System.out.println("O resultado é:" + total);
                break;
            }
        }
    }
}
