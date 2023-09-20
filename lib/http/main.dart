import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
main() async {
  Map<String, String> header = {};
  var res = await fetchTodo(); // 미완료, 완료 - data, error
  Todo? todo;
  if (res.statusCode == 200) {
    print("통신 성공");
    print(res.headers.runtimeType);
    print(res.body.runtimeType);
    header = res.headers;
    Map<String, dynamic> httpBody = json.decode(res.body); // String -> map 파싱
    print(httpBody.toString());
    print(httpBody["title"]);
    print(httpBody["aa"]);
    // Map --> Todo 클래스 타입으로 변환하는게 가독성, 안정성측면에서 좋음
    todo = Todo.fromJson(httpBody);
  } else {
    print("통신 실패");
  }

  print("=======================");
  if (todo != null) print(todo.toString());
}

Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  final response = await http.get(Uri.parse(url));
  return response;
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
