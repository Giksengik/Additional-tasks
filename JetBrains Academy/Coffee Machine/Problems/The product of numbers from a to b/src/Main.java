import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner in= new Scanner(System.in);
        int a = in.nextInt();
        int b = in.nextInt();
        long sum=1;
        for(int i=a;i<b;i++){
            sum*=i;
        }
        System.out.print(sum);
    }
}