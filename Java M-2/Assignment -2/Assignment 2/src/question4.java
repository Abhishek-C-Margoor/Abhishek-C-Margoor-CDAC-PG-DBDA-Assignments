import java.util.Scanner;
class Person{
    String name;
    int age;
    Person (String name,int age){
        this.name = name;
        this.age = age;
    }
}
class student extends Person{
    int rollno;
    int marks;
    student (String name,int age,int rollno,int marks){
        super(name,age);
        this.rollno = rollno;
        this.marks = marks;
    }
    void display(){
        System.out.println("Name: "+name);
        System.out.println("Age: "+age);
        System.out.println("Rollno: "+rollno);
        System.out.println("Marks: "+marks+"%");
    }
}
public class question4 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the name of student:");
        String name = sc.nextLine();
        System.out.println("Enter the age of student:");
        int age = sc.nextInt();
        System.out.println("Enter the rollno of student:");
        int rollno = sc.nextInt();
        System.out.println("Enter the marks of student:");
        int marks = sc.nextInt();
        student sd = new student(name,age,rollno,marks);
        sd.display();

    }
}
