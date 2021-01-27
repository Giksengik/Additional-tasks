import java.util.Scanner;

class Main {
    public static void main(String[] args) {
       Scanner in = new Scanner(System.in);
       switch(in.nextLine()){
           case "triangle":
               double a = in.nextDouble();
               double b = in.nextDouble();
               double c = in.nextDouble();
               double p = (a + b + c) / 2;
               System.out.println(
                       Math.sqrt(p * (p - a) * (p - b) * (p - c)));
               break;
           case "rectangle":
               double d = in.nextDouble();
               double e = in.nextDouble();
               System.out.println(d * e);
               break;
           case "circle":
               double r = in.nextDouble();
               System.out.println(r*r*3.14);
               break;
       }
    }
}