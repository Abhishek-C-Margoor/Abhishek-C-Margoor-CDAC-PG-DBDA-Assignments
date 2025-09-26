class Vehicle1{
    void run(){
        System.out.println("Vehicle on the basis of wheels");
    }
}
class bike extends Vehicle1{
    void run(){
        System.out.println("Bike is a two wheeler vehicle");
    }
}
class car1 extends Vehicle1{
    void run(){
        System.out.println("Car is a four wheeler vehicle");
    }
}
public class question17 {
    public static void main(String[]args){
        Vehicle1 v = new Vehicle1();
        Vehicle1 b = new bike();
        Vehicle1 c = new car1();
        v.run();
        b.run();
        c.run();
    }
}
