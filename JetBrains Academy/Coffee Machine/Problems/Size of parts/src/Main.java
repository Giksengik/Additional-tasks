import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner in=new Scanner(System.in);
        int N=in.nextInt();
        int toDelivery=0;
        int rejects=0;
        int toBeFixed=0;
        for(int i=0;i<N;i++){
            switch (in.nextInt()){
                case 1:
                    toBeFixed++;
                    break;
                case 0:
                    toDelivery++;
                    break;
                case -1:
                    rejects++;
                    break;
            }
        }
        System.out.print(toDelivery+" "+toBeFixed+" "+rejects);
    }
}