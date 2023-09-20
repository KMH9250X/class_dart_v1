import 'package:http/http.dart' as http;
import 'dart:convert';

main() async {
  var res = await fetchTodoList();
  List<dynamic> list = json.decode(res.body);
  // List<Todo> todos = [];
  // list.forEach((e) => todos.add(Todo.fromJson(e)));
  // todos.forEach((e) => print(e));

  List<Todo> myTodo = list.map((e) => Todo.fromJson(e)).toList();
  myTodo.forEach((element) => print(element));

}

Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
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
