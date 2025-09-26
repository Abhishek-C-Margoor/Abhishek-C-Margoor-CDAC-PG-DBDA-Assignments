class bank{
    void getInterestrate(){
        System.out.println("Interest rate of RBI is 5.50%");
    }
}
class SBI extends bank{
    void getInterestrate(){
        System.out.println("Interest rate of SBI is 8%");
    }
}
class HDFC extends bank{
    void getInterestrate(){
        System.out.println("Interest rate of HDFC is 10%");
    }
}
class ICICI extends bank{
    void getInterestrate(){
        System.out.println("Interest rate of ICICI is 12%");
    }
}
public class question18 {
    public static void main(String[]args){
        bank b = new bank();
        bank h = new HDFC();
        bank i = new ICICI();
        bank s = new SBI();
        b.getInterestrate();
        h.getInterestrate();
        i.getInterestrate();
        s.getInterestrate();
    }
}
