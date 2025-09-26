abstract class Vehicle{
    abstract void start();
}
class bike1 extends Vehicle{
    void start(){
        System.out.println("Bike is running");
    }
}
class car2 extends Vehicle{
    void start(){
        System.out.println("Car is moving");
    }
}
public class question21 {
    public static void main(String[]args){
        Vehicle b = new bike1();
        Vehicle c = new car2();
        b.start();
        c.start();
    }
}
