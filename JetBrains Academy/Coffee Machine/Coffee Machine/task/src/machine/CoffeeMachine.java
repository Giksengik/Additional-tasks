package machine;

import java.util.Scanner;

public class CoffeeMachine {
    public int waterAmount;
    public int milkAmount;
    public int beanAmount;
    public int dollars;
    public int disposableCups;

    public CoffeeMachine (int waterAmount, int milkAmount, int beanAmount, int dollars, int disposableCups) {
        this.waterAmount = waterAmount;
        this.milkAmount = milkAmount;
        this.beanAmount = beanAmount;
        this.dollars = dollars;
        this.disposableCups = disposableCups;
    }

    @Override
    public String toString () {
        return ("The coffee machine has:"+"\n"+
                (waterAmount+" of water")+"\n"+
                (milkAmount+" of milk")+"\n"+
                (beanAmount+" of coffee beans")+"\n"+
                (disposableCups+" of disposable cups")+"\n"+
                (dollars+" of money")+"\n"+"\n");
    }

    public void fill (Scanner in) {
        System.out.println("Write how many ml of water do you want to add:");
        this.waterAmount += in.nextInt();
        System.out.println("Write how many ml of milk do you want to add: ");
        this.milkAmount += in.nextInt();
        System.out.println("Write how many grams of coffee beans do you want to add: ");
        this.beanAmount += in.nextInt();
        System.out.println("Write how many disposable cups of coffee do you want to add: ");
        this.disposableCups += in.nextInt();
    }
    public void chooseAction () {
        Scanner in = new Scanner(System.in);
        System.out.println("Write action (buy, fill, take): ");
        switch (in.nextLine()) {
            case "buy":
                buy(in);
                chooseAction();
                break;
            case "fill":
                fill(in);
                chooseAction();
                break;
            case "take":
                take();
                chooseAction();
                break;
            case "exit":
                break;
            case "remaining":
                System.out.println(toString());
                chooseAction();
                break;
            default:
                chooseAction();
                break;
        }
    }
    public void buy (Scanner in) {
        System.out.println("What do you want to buy? 1 -" +
                " espresso, 2 - latte, 3 - cappuccino:  ");
        switch (in.nextLine()) {
            case "1":
                if (isEnoughtResourses(250,0,16)) {
                    System.out.println("I have enough resources, making you a coffee!");
                    buyEspresso();
                }
                break;
            case "2":
                if (isEnoughtResourses(350,75,20)) {
                    System.out.println("I have enough resources, making you a coffee!");
                    buyLatte();
                }
                break;
            case "3":
                if (isEnoughtResourses(200,100,12)) {
                    System.out.println("I have enough resources, making you a coffee!");
                    buyCappuccino();
                } else
                break;
            default:
                break;
        }
    }
    private void buyEspresso(){
        this.waterAmount -= 250;
        this.beanAmount -= 16;
        this.dollars += 4;
        this.disposableCups -= 1;
    }
    private void buyLatte(){
        this.waterAmount -= 350;
        this.milkAmount -= 75;
        this.beanAmount -= 20;
        this.dollars += 7;
        this.disposableCups -= 1;
    }
    private void buyCappuccino(){
        this.waterAmount -= 200;
        this.milkAmount -= 100;
        this.beanAmount -= 12;
        this.dollars += 6;
        this.disposableCups -= 1;
    }
    public void take (){
        System.out.println("I gave you $" + this.dollars);
        this.dollars = 0;
    }
    public boolean isEnoughtResourses(int waterAmount, int milkAmount , int beanAmount){
        if (this.waterAmount < waterAmount) {
            System.out.println("Sorry, not enough water!");
            return false;
        }
        else if (this.milkAmount < milkAmount) {
            System.out.println("Sorry, not enough milk!");
            return false;
        }
        else if (this.beanAmount < beanAmount){
            System.out.println("Sorry, not enough beans!");
            return false;
        }
        else if ( disposableCups == 0 ) {
            System.out.println("Sorry, not enough cups!");
            return false;
        }
        return true;
    }

    public static void main(String[] args) {
        CoffeeMachine coffeeMachine =
                new CoffeeMachine(400, 540,
        120,550,9);
        coffeeMachine.chooseAction();
        }
    }

