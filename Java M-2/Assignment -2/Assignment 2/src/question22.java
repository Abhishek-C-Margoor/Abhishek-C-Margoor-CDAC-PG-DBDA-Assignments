abstract class shape2{
    abstract void calculatearea();
}
class circle2 extends shape2{
    void calculatearea(){
        System.out.println("Circle only has radius ");
    }
}
class rectangle2 extends shape2{
    void calculatearea(){
        System.out.println("Rectangle has length and breadth");
    }
}
public class question22 {
    public static void main(String[]args){
        shape2 c = new circle2();
        shape2 r = new rectangle2();
        c.calculatearea();
        r.calculatearea();

    }
}
