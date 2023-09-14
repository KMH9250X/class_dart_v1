import 'package:flutter_v1/constructor/challenge_bus.dart';
import 'package:flutter_v1/constructor/challenge_student.dart';

void main() {
  challenge_student student1 = challenge_student("철수", 100000);
  challenge_bus no1200 = challenge_bus(1200, 1300, 30000);

  student1.takeBus(no1200);
}
