import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner in= new Scanner(System.in);
        int i=0;
        int a=-1;
        while(a!=0){
            a=in.nextInt();
            if(a==0){
                System.out.print(i);
            }
            else i++;
        }
    }
}