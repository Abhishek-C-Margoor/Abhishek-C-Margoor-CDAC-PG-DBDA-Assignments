import java.util.Scanner;
class employee{
    int salary;
    String name;
    employee(int salary,String name){
        this.salary = salary;
        this .name = name;
    }
}
class manager extends employee{
    int bonus;
    manager(int salary,String name,int bonus){
        super(salary,name);
        this.bonus = bonus;
    }
    void calculatesalary(){
        salary = salary+bonus;
    }
    void display(){
        System.out.println("Name: "+ name);
        System.out.println("Bonus: "+ bonus);
        System.out.println("Salary: "+ salary);
    }
}
public class question3 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the salary of the employee :");
        int salary = sc.nextInt();
        System.out.println("Enter the name of the employee :");
        String name = sc.next();
        System.out.println("Enter the Bonus of the employee :");
        int bonus = sc.nextInt();
        manager emp = new manager (salary,name,bonus);
        emp.calculatesalary();
        emp.display();


    }
}
