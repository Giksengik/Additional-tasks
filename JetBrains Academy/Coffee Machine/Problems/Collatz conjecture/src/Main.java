import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int a=in.nextInt();
        System.out.print(a+" ");
        while(a!=1){
            if(a%2==0){
                a/=2;
                System.out.print(a+" ");
            }
            else{
                a*=3;
                a+=1;
                System.out.print(a+" ");
            }
        }
    }
}