import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        int N,M,K;
        Scanner in = new Scanner(System.in);
        N=in.nextInt();
        M=in.nextInt();
        K=in.nextInt();
        if(N*M>=K){
            if(K%N==0||K%M==0){
                System.out.println("YES");
            }
            else{
                System.out.println("NO");
            }
        }else{
            System.out.println("NO");
        }
    }
}