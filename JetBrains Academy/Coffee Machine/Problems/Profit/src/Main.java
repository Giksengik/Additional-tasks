import java.util.*;

public class Main {
    public static void main(String[] args) {
        Scanner in= new Scanner(System.in);
        double M=in.nextInt();
        double P=in.nextInt();
        double K=in.nextInt();
        int years=0;
        while(M<K){
            M=M+M*P/100;
            years++;
        }
        System.out.print(years);
    }
}