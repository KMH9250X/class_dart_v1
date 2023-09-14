class Animal {
  void eat() {
    print("동물이 먹이를 먹음");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("강아지가 사료를 먹음");
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print("고양이가 사료를 먹음");
  }
}

void main() {
  Animal an1 = Cat();
  Animal an2 = Dog();

  // 자료구조에 cat과 dog를 둘다 담을 수 있음
  List<Animal> list = [an1, an2];
  list.forEach((element) {
    element.eat();
  });
}
