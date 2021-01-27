import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        int A,B,C;
        Scanner in = new Scanner(System.in);
        A=in.nextInt();
        B=in.nextInt();
        C=in.nextInt();
        if(A + B > C && A + C > B && C + B > A){
            System.out.println("YES");
        }else{
            System.out.println("NO");
        }
    }
}