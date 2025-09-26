class calculator{
    int multiply(int a,int b){
        return a*b;
    }
    double multiply(double a,double b){
        return a*b;
    }
    double multiply (int a,double b){
        return a*b;
    }
}
public class question13 {
    public static void main(String[] args) {
        calculator cal = new calculator();
        System.out.println("Multiplication of int numbers:"+cal.multiply(3,4));
        System.out.println("Multiplication of double numbers:"+cal.multiply(5.4,4.6));
        System.out.println("Multiplication of int,double numbers:"+cal.multiply(3,4.4));
    }
}
