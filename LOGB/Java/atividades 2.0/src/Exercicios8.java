import java.util.Scanner;

public class Exercicios8 {
    public static void main(String[] args) {

        String nome,sobrenome,email;
        Double idade,telefone;

        Scanner XC = new Scanner(System.in);
        System.out.println("Informar seu nome: ");
        nome = XC.nextLine();
        System.out.println("Informar seu email: ");
        email = XC.nextLine();
        System.out.println("Informar o sobrenome: ");
        sobrenome = XC.nextLine();
        System.out.println("Informar seu telefone: ");
        telefone = XC.nextDouble();
        System.out.println("Informar seu idade: ");
        idade = XC.nextDouble();

        System.out.println("O resumo é:"+ "nome:"+nome+"Email:"+email+"Telefone:"+telefone+"Idade:"+idade+"Sobrenome"+sobrenome);
        }
    }



