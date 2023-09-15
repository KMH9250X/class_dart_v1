abstract class Animal {
  String name;

  Animal(this.name);

  void makeSound();
}

// 메모리에 Animal 클래스가 먼저 올라가야함
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name : 왈왈");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name : 야옹");
  }
}

void main() {
  Cat c = Cat("고양이1");
  Dog d = Dog("개1");

  List<Animal> list = [c, d];
  list.forEach((e) {
    e.makeSound();
    print("=======");
  });
}
