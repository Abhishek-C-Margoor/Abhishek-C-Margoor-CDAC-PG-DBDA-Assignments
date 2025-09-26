import java.util.Scanner;
class Student{
    private String name;
    private int age;
    Student(String name,int age){
        this.name = name;
        this.age = age;
    }
    String getname(){
        return name;
    }
    int getage(){
        return age;
    }
    void setname(String name){
        this.name = name;
    }
    void setage(int age){
        this.age = age;
    }
}
public class question7 {
    public static void main (String[]args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the name of the student:");
        String name = sc.nextLine();
        System.out.println("Enter the age of the student:");
        int age = sc.nextInt();
        Student s = new Student(name,age);
        System.out.println("Name :"+s.getname());
        System.out.println("Age :"+s.getage());
    }
}
