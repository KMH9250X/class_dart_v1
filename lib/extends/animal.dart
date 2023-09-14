class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print("$name is making a sound");
  }
}

class Dog extends Animal {
  String? breed;

  // java에서 사용했던 문법, dart에선 허용X
  // Dog(String name, int age) {
  //   super(name, age);
  // }

  // 1단계
  // Dog(super.name, super.age);

  // 2단계
  Dog(name, age, this.breed) : super(name, age);

  @override
  void speak() {
    super.speak();
    print("$name 짖다");
  }
}

void main(){
  Dog dog = Dog("바둑이", 3, "치와와");
  dog.speak();
}