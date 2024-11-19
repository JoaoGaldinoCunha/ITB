 import java.util.Scanner;

 public class Exercicios12 {
     public static void main(String[] args) {

         Double n1, n2;

         Scanner XC = new Scanner(System.in);
         System.out.println("Informar seu primeiro numero: ");
         n1 = XC.nextDouble();
         System.out.println("Informar o segundo numero: ");
         n2 = XC.nextDouble();
         if (n1 ==0)
             System.out.println("Não a divisor por zero: ");

         else {
             double resultado = n1 / n2;
             System.out.println("O resultado é: " + resultado);
         }
     }
     }




