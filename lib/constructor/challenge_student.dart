import 'package:flutter_v1/constructor/challenge_bus.dart';

class challenge_student {
  String name;
  int money;

  challenge_student(this.name, this.money);

  void takeBus(challenge_bus bus) {
    int price = bus.getPrice()!;
    money -= price;
    bus.chargePrice();
    print("$name학생이 $price원을 내고 ${bus.getBusNumber()}번 버스에 탔음");
  }

  @override
  String toString() {
    return 'challenge_student{name: $name, money: $money}';
  }
}
