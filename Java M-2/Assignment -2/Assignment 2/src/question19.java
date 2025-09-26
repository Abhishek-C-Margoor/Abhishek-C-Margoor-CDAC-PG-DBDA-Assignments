class phone{
    void call(){
        System.out.println("There are man y appliances from where you can make a call:");
    }
}
class smartphone extends phone{
    void call(){
        System.out.println("1.Smartphone(latest)");
    }
}
class Landline extends phone{
    void call(){
        System.out.println("2.Landline(older)");
    }
}
public class question19 {
    public static void main(String[]args){
        phone p = new phone();
        phone s = new smartphone();
        phone l = new Landline();
        p.call();
        s.call();
        l.call();
    }
}
