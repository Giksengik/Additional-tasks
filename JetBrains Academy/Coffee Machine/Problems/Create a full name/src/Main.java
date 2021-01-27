// Don't delete scanner import
import java.util.Scanner;

class Name {
    //implement your method here
    public static String createFullName (String name, String surname) {
        return(name + " " + surname);
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
    // use this program as a source of inspiration for your method
        String a = scanner.nextLine();
        String b = scanner.nextLine();
        System.out.println(Name.createFullName(a,b));
    }


}