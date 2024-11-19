import java.util.Scanner;

// ## calcular o consumo de combustivel##
public class Exercicio03 {
    public static void main(String[] args) {

        // Declarando as variaveis
        double reais;
        // Declarando o meu Scanner
        Scanner scanner = new Scanner(System.in);
        // Exibindo mensagem na tela para o usuacio
        System.out.println("Informar a quantidade em reais: ");
        // Lendo a informacao (com o Scanner) que o usuario digitou
        reais = scanner.nextDouble();
        double dolar=reais/5.25;

        System.out.println( "O valor convertido será:" + dolar);
    }

}