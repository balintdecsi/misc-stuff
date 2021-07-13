public class Main {
    public static void main(String[] args) {
        B obj_b = new B();
    }
}

class A {
    public A() {
        System.out.println("Hello");
    }
}

public class B extends A {
    public B() {
        System.out.println("world");
    }
}