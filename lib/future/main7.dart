import 'dart:convert';

main() {
  // 여러줄의 문자열 '''내용''';
  String jsonStr = '''
  {
   "userId": 1,
   "id": 10,
   "title": "illo est ratione doloremque quia maiores aut",
   "completed": true
  } 
  ''';

  // 1 단계
  // JSON 문자열 타입을 Map구조로 파싱
  // print("jsonMap : ${json.decode(jsonStr).runtimeType}");
  // print(json.decode(jsonStr)); // Json.decode() 메서드를 이용한 Map 데이터 구조 변환
  Map<String, dynamic> jsonMap = json.decode(jsonStr);
  jsonMap.forEach((key, value) {
    // print("key : $key");
    // print("value : $value");
    // print("$key : $value");
  });

  Todo myTD = Todo.fromJson(jsonMap);
  print(myTD.userId);
  print(myTD.id);
  print(myTD.title);
  print(myTD.completed);
}

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 기본 생성자
  Todo(this.userId, this.id, this.title, this.completed);
  // 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
        id = json["id"],
        title = json["title"],
        completed = json["completed"];
}
