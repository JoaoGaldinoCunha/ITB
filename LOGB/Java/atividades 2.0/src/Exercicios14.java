import java.util.Scanner;
public class Exercicios14 {

public static void main( String[] args)
        {
        Scanner in = new Scanner(System.in);
        int num1,num2,total;
        double operador;
        System.out.println("Informe o primeiro numero: ");
        num1 = in.nextInt();
        System.out.println("informe o segundo numero: ");
        num2 = in.nextInt();
        System.out.println("Soma [1]Menos [2] Vezes [3] Dividir [4]: ");
        operador = in.nextDouble();

        if(operador== (1))
        {
        total = num1 + num2;
        System.out.println("Resultado é "+total);
        }
        else if (operador== (2))
        {
        total = num1 - num2;
        System.out.println("Resultado é "+total);
        }
        else if (operador== (3))
        {
        total = num1 * num2;
        System.out.println("Resultado é "+total);
        }
        else if (operador==(4))
        {
        total = num1 / num2;
        System.out.println("Resultado é "+total);
        }
        }
}