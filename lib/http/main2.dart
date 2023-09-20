import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
main() {
  String jsonArrStr = '''
  [
    {
      "userId": 1,
      "id": 1,
      "title": "delectus aut autem",
      "completed": false
    },
    {
    "userId": 1,
    "id": 2,
    "title": "quis ut nam facilis et officia qui",
    "completed": false
    }
  ]''';
  print(json.decode(jsonArrStr).runtimeType); // 출력결과 : List<dynamic>
  List<dynamic> listBody1 = json.decode(jsonArrStr);
  print(listBody1.runtimeType);
  print(listBody1[0]);
  print(listBody1[0].runtimeType); // 출력결과 : _Map<String, dynamic>
  List<Todo> todos = [];
  for (var m in listBody1) {
    todos.add(Todo.fromJson(m));
  }
  print(todos.length);
  print(todos[0].toString());
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  // 기본 생성자
  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  // 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
        id = json["id"],
        title = json["title"],
        completed = json["completed"];

  @override
  String toString() {
    return 'userId: $userId, id: $id, title: $title, completed: $completed';
  }
}
