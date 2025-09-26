class Animal{
    void makesound(){
        System.out.println("Animal Sound");
    }
}
class dog extends Animal{
    void makesound(){
        System.out.println("Bark");
    }
}
public class Question1 {
    public static void main(String[] args) {
        Animal a = new Animal();
        dog d = new dog();
        a.makesound();
        d.makesound();
    }
}
