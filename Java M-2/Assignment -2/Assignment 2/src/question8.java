import java.util.Scanner;
class CAR{
    private String model;
    private int year;
    private int price;
    CAR(String model,int year,int price){
        this.model = model;
        this.year = year;
        this.price = price;
    }
    String getmodel(){
        return model;
    }
    int getyear(){
        return year;
    }
    int getprice(){
        return price;
    }
    void setmodel(String model){
        this.model = model;
    }
    void setyear(int year){
        this.year = year;
    }
    void setprice(int price){
        this.price = price;
    }
}
public class question8 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the name of the model:");
        String model = sc.nextLine();
        System.out.println("Enter the year of the car:");
        int year = sc.nextInt();
        System.out.println("Enter the price of the car:");
        int price = sc.nextInt();
        CAR s = new CAR(model,year,price);
        System.out.println("Name:"+s.getmodel());
        System.out.println("Year:"+s.getyear());
        System.out.println("Price:"+s.getprice());

    }
}
