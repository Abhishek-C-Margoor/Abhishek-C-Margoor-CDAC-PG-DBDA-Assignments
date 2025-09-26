abstract class employee3{
    abstract void calculatesalary();
}
class fulltimeemployee extends employee3{
    void calculatesalary(){
        System.out.println("You are a full time employee");
    }
}
class parttimeemployee extends employee3{
    void calculatesalary(){
        System.out.println("You are the part time employee ");
    }
}
public class question24 {
    public static void main(String[]args){
        employee3 c = new fulltimeemployee();
        employee3 u = new parttimeemployee();
        c.calculatesalary();
        u.calculatesalary();

    }
}
