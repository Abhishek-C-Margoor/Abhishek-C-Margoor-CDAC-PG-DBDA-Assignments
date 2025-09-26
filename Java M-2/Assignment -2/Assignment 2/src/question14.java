class shape1{
    void draw(String value){
        System.out.println("The name of the shape is :"+value);
    }
    void draw(int value){
        System.out.println("The n. of vertices it have:"+value);
    }
    void draw(double value){
        System.out.println("The number of corner are :"+value);
    }
}
public class question14 {
    public static void main(String[]args){
        shape1 sh = new shape1();
        sh.draw("Circle");
        sh.draw(0);
        sh.draw(0.0);
    }
}
