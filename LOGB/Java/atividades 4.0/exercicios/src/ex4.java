import java.util.Scanner;

public class ex4 {
    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);

        int contador,fim,inicio;
        contador=0;

        System.out.print("conte ate o valor");
        fim=leia.nextInt();
        System.out.print("valor inicial");
        inicio=leia.nextInt();
        if(fim==inicio)        {
            System.out.print("numeros iguais,sem possibilidade de contagem ");
        }
        else if(fim<inicio) {
                System.out.print("numeros final menor,sem possibilidade de contagem ");
        }
         else{
            contador=inicio;
            while (contador <=fim){
                System.out.print("numero: "+contador+"\n");
                contador=contador+1;
            }
        }

        }
    }
