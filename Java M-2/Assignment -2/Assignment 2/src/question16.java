class Animal1{
    void speak(){
        System.out.println("Make voice");
    }
}
class Dog extends Animal1{
    void speak(){
        System.out.println("Dog barks");
    }
}
class Cat extends Animal1{
    void speak(){
        System.out.println("Cat meows");
    }
}
public class question16 {
    public static void main(String[] args) {
        Animal1 a = new Animal1();
        Animal1 d = new Dog();
        Animal1 c = new Cat();
        a.speak();
        d.speak();
        c.speak();
    }
}
