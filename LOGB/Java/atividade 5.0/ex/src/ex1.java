import java.util.Scanner;

public class ex1 {
    static String[] Diasdasemana={"Domingo","Segunda-Feira","Terça-Feira","Quarta-Feira","Quinta-Feira","Sexta-Feira","Sabado"};
    public static void main(String[] args) {

int Diasdasemana;
        Scanner xc = new Scanner(System.in);

        System.out.println("Digite o dia da semana selecionado");
        Diasdasemana = xc.nextInt();
        switch (Diasdasemana) {
            case 1:
                System.out.println("Domingo");
                break;
            case 2:
                System.out.println("Segunda");
                break;
            case 3:
                System.out.println("Terça-Feira");
                break;
            case 4:
                System.out.println("Quarta-Feira");
                break;
            case 5:
                System.out.println("Quinta-Feira");
                break;
            case 6:
                System.out.println("Sexta-Feira");
                break;
            case 7:
                System.out.println("Sebado");
break;

        }
    }
}
