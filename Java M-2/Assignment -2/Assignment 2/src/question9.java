class laptop{
    String brand;
    int price;
    laptop(String brand,int price){
        this.brand = brand;
        this.price = price;
    }
    String getbrand(){
        return brand;
    }
    int getprice(){
        return price;
    }
    void setbrand(String brand){
        this.brand = brand;
    }
    void setprice(int price){
        this.price = price;
    }
}
public class question9 {
    public static void main(String[]args){
        laptop l = new laptop("HP",20000);
        l.setbrand("Dell");
        l.setprice(50000);
        System.out.println("Brand of the laptop:"+l.getbrand());
        System.out.println("Price of the laptop:"+l.getprice());
    }
}
