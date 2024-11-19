import java.util.Scanner;

public class ex5 {
    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);

        int num;
        System.out.print("escreva um numero para verificação");
            num= leia.nextInt();
        if(num % 2 == 0){
            System.out.print("esse número é par"+"\n"+num);
        }
        else{
            System.out.print("esse número é impar"+"\n"+num);
        }
    }

        }

