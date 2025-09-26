class currencyconverter{
    double currency(double inr){
        return inr*0.012;
    }
    double currency(double inr,String curr){
        if (curr.equals("Eur")){
            return inr*0.011;
        }
        else{
            return 0;
        }

    }

}
public class question15 {
    public static void main(String[] args) {
        currencyconverter cc  = new currencyconverter();
        System.out.println("The currency from INR to USD is :"+cc.currency(100));
        System.out.println("The currency from INR to EUR is :"+cc.currency(100,"Eur"));
    }
}
