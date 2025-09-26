class Bankaccount{
    private int accountnumber;
    private int balance;
    Bankaccount(int accountnumber,int balance){
        this.accountnumber=accountnumber;
        this.balance=balance;
    }
    int getaccountnumber(){
        return accountnumber;
    }
    int getbalance(){
        return balance;
    }
    void setaccountnumber(int accountnumber){
        this.accountnumber = accountnumber;
    }
    void setbalance(int balance){
        this.balance = balance;
    }
}
public class question6 {
    public static void main(String[]arg){
        Bankaccount b1 = new Bankaccount(246810,45000);
        b1.setaccountnumber(246810);
        b1.setbalance(45000);
        System.out.println("Bank account number is:"+b1.getaccountnumber());
        System.out.println("The balance is:"+b1.getbalance());
    }
}
