mixin LoggingMixin {
  String tag = 'LoggingMixin';

  // LoggingMixin(this.tag); //믹스인은 생성자를 가질 수 없음

  void log(String message) {
    print('log - $tag : $message');
  }
}

class User with LoggingMixin {
  String name;

  User(this.name);
}

main() {
  User user = User("홍길동");
  user.tag = "User";
  user.log("TEST USER CLASS");
}
// 핵심은 아니지만 자주 번외적으로 사용하는 기능에 Mixin클래스 사용
