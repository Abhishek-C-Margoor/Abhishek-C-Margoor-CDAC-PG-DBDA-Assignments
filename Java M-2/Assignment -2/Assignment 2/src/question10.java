import java.util.Scanner;
class patient{
    int id;
    String name;
    String disease;
    patient(int id,String name,String disease){
        this.id = id;
        this.name = name;
        this.disease = disease;
    }
    int getid(){
        return id;
    }
    String getname(){
        return name;
    }
    String getdisease(){
        return disease;
    }
    void setid(int id){
        this.id = id;
    }
    void setname(String name){
        this.name = name;
    }
    void setdisease(String disease){
        this.disease = disease;
    }

}
public class question10 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        System .out.println("Enter the patient id:");
        int id = sc.nextInt();
        sc.nextLine();
        System .out.println("Enter the patient name:");
        String name = sc.nextLine();
        System.out.println("Enter the disease:");
        String disease = sc.nextLine();
        patient p = new patient(id,name,disease);
        System.out.println("Patient id:"+p.getid());
        System.out.println("Name of the patient:"+p.getname());
        System.out.println("Name of the patient's disease:"+p.getdisease());

    }
}
