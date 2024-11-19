import java.util.Scanner;

// ## calcular o consumo de combustivel##
public class Exercicio02 {
    public static void main(String[] args) {

        // Declarando as variaveis
        double distancia=0, combustivel=0, consumo=0;
        // Declarando o meu Scanner
        Scanner xc = new Scanner(System.in);
        // Exibindo mensagem na tela para o usuacio
        System.out.println("Informar a distancia: ");
        // Lendo a informacao (com o Scanner) que o usuario digitou
        distancia = xc.nextDouble();

        //Lendo a informacao (com o Scanner) que o usuario digitou
        System.out.println("informar o combustivel: ");
        // Lendo a informacao (com o Scanner) que o usuario digitou
        combustivel = xc.nextDouble();
        // Realizando o calculo do combustivel
        consumo= distancia/combustivel;

        // Exibindo para o usuario o calculo/combustivel
        System.out.println( "o consumo de combustivel e de " + consumo+" por litro");

    }
}