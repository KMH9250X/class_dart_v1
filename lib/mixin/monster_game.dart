mixin AttackBehavior {
  attack(Monster target);
}

abstract class Weapon {
  int damage;

  Weapon(this.damage);
}

class Sword extends Weapon {

  Sword(int damage) : super(damage);
}

class Bow extends Weapon {

  Bow(int damage) : super(damage);
}

class Monster with AttackBehavior {
  String name;
  num hp;
  Weapon weapon;

  Monster(this.name, this.hp, this.weapon);

  showInfo() {
    print("================상태창================");
    print("이름 : $name");
    print("무기 대미지 : ${weapon.damage}");
    print("현재 체력 : $hp");
  }

  @override
  attack(Monster target) {
    print("${this.name}이 ${target.name}을(를) 공격합니다.");
    target.hp -= this.weapon.damage;
  }
}

void main() {
  Sword sword = Sword(10);
  Bow bow = Bow(5);

  Monster monster1 = Monster("드래곤", 100, sword);
  Monster monster2 = Monster("고블린", 50, bow);

  monster1.attack(monster2);
  monster1.attack(monster2);
  print("-----------------");
  monster2.showInfo();
  print("-----------------");

  monster2.attack(monster1);
  monster1.showInfo();
}
