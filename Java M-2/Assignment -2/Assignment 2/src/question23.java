abstract class payment{
    abstract void payamount();
}
class CreditCardPayment extends payment{
    void payamount(){
        System.out.println("Payment is done by Credit Card ");
    }
}
class UPIpayment extends payment{
    void payamount(){
        System.out.println("Payment is done by UPI");
    }
}
public class question23 {
    public static void main(String[]args){
        payment c = new CreditCardPayment();
        payment u = new UPIpayment();
        c.payamount();
        u.payamount();

    }
}