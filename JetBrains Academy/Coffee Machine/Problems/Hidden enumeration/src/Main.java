public class Main {

    public static void main(String[] args) {
        int count = 0;
        for(Secret item : Secret.values()){
            if (item.name().substring(0,4).equals("STAR")) count++;
        }
        System.out.println(count);
    }
}


