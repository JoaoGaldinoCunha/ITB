import java.util.Scanner;

public class ex3 {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int contador,fim;
        contador=0;
        System.out.print("conte ate o valor: ");
        fim=in.nextInt();
        while (contador <=fim){
            System.out.print("numero"+contador+"\n");
            contador=contador+1;

        }
    }
}