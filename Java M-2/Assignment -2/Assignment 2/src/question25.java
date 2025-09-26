abstract class Appliance{
    abstract void turnon();
    abstract void turnoff();
}
class lighton extends Appliance{
    void turnoff(){
        System.out.println("Light is off");
    }
    void turnon(){
        System.out.println("Light is on");
    }
}
class lightoff extends Appliance{
    void turnoff(){
        System.out.println("Light is off");
    }
    void turnon(){
        System.out.println("Light is on");
    }

}
public class question25 {
    public static void main(String[]args){
        Appliance c = new lighton();
        Appliance u = new lightoff();
        c.turnon();
        u.turnoff();
        c.turnoff();
        u.turnon();

    }
}