class Mathoperations{
    int add(int a,int b){
        return a+b;
    }
    int add(int a,int b,int c){
        return a+b+c;
    }
}
public class question11 {
    public static void main(String[]args){
        Mathoperations m  = new Mathoperations();
        m.add(4,5);
        System.out.println(m.add(4,5));
        Mathoperations m2 = new Mathoperations();
        m2.add(4,5,6);
        System.out.println(m2.add(4,5,6));
    }
}
