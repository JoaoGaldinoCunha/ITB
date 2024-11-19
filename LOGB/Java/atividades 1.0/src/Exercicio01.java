import java.util.Scanner;

public class Exercicio01 {
    public static void main(String[] args) {

        // Declarando as variaveis
        double frete =0, km= 0;

        Scanner scanner = new Scanner(System.in);
        // Exibindo mensagem na tela para o usuacio
        System.out.println("Informar a distancia: ");
        // Lendo a informacao (com o Scanner) que o usuario digitou
        km = scanner.nextDouble();
        // Realizando o calculo do Frete
        frete=    (km * 1.5)+9;

        // Exibindo para o usuario o calculo/total do frete
        System.out.println("0 valor total do frete fica: R$ " + frete);

    }
}