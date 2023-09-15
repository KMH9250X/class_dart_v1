//일반 클래스를 사용한 방법
class Laptop {
  // void 생략 가능, 타입 추론이 가능하기 때문
  turnOn() {
    print("전원 On");
  }

  turnOff() {
    print("전원 Off");
  }
}

class MacBook implements Laptop {
  @override
  turnOff() {
    print("맥북 전원 On");
  }

  @override
  turnOn() {
    print("맥북 전원 Off");
  }
}

main() {
  MacBook mb = MacBook();
  mb.turnOn();
  mb.turnOff();
}
