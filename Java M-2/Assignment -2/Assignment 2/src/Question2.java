import java.util.Scanner;

class vehicle{
    String brand;
    int speed;
    vehicle(String brand,int speed){
        this.brand = brand;
        this.speed = speed;
    }
}
class car extends vehicle{
    String fueltype;
    car(String brand,int speed,String fueltype){
        super(brand,speed);
        this.fueltype = fueltype;
    }
    void display() {
        System.out.println("Brand of the car is:" + brand);
        System.out.println("The speed of the car is:" + speed);
        System.out.println("Fuel Type is:" + fueltype);
    }
}

class Question2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the brand of your vehicle:");
        String brand = input.nextLine();
        System.out.println("Enter the speed of the car:");
        int speed = input.nextInt();
        input.nextLine();
        System.out.println("Enter the fuel type of the car:");
        String fueltype = input.nextLine();
        car c1 = new car(brand, speed, fueltype);
        c1.display();
    }
}
