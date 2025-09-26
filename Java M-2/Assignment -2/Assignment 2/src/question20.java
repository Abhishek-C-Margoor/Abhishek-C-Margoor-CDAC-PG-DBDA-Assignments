class browser{
    void openwebsite(){
        System.out.println("Its is a collection of html page");
    }
}
class chrome extends browser{
    void openwebsite(){
        System.out.println("Chrome is a type of web browser");
    }
}
class firefox extends browser{
    void openwebsite(){
        System.out.println("Firewox is a type of web browser");
    }
}
public class question20 {
    public static void main(String[]args){
        browser b = new browser();
        browser c = new chrome();
        browser f = new firefox();
        b.openwebsite();
        c.openwebsite();
        f.openwebsite();
    }
}










