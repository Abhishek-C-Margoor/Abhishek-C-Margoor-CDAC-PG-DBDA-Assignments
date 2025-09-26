class Printer{
    public void print(String value){
        System.out.println("String value:" +value);
    }
    public void print(int value){
        System.out.println("int value:" +value);
    }
    public void print(double value){
        System.out.println("double value:" +value);
    }
}
public class question12 {
    public static void main(String[]args){
        Printer print = new Printer();
        print.print("Hello");
        print.print(45);
        print.print(3.0);

    }
}
