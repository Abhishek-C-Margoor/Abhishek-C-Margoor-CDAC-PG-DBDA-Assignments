class shape{
    double area(){
        return 0;
    }
}
class circle extends shape{
    int  radius;
    circle (int radius){
        this.radius = radius;
    }
    double area(){
        return Math.PI * radius * radius;
    }
}
class rectangle extends shape{
    int length;
    int breadth;
    rectangle(int length,int breadth){
        this.length = length;
        this.breadth = breadth;
    }
    double area(){
        return length*breadth;
    }
}
public class question5 {
    public static void main(String[]args){
        circle c = new circle(4);
        System.out.println("Area of the circle:"+c.area());
        rectangle r = new rectangle(5,6);
        System.out.println("Area of the rectangle:"+r.area());
    }
}
