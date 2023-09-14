// 주사위 게임 만들기
// 단, 주사위의 숫자는 열거형으로 설계
import 'dart:math';

enum dice { one, two, three, four, five, six, error }

class DiceGame {
  static dice rollDice() {
    Random rd = Random();
    int num = rd.nextInt(5) + 1;
    switch (num) {
      case 1:
        return dice.one;
      case 2:
        return dice.two;
      case 3:
        return dice.three;
      case 4:
        return dice.four;
      case 5:
        return dice.five;
      case 6:
        return dice.six;
      default:
        return dice.error;
    }
  }
}

void main() {
  print(DiceGame.rollDice());
}
