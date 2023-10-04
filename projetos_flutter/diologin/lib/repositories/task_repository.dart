import 'package:diologin/model/task.dart';

class TaskRepository {
  final List<Task> _tasks = [];

  void add(Task task) async {
    await Future.delayed(const Duration(seconds: 2));
    _tasks.add(task);
  }

  void alterar(String id, bool completed) async {
    await Future.delayed(const Duration(seconds: 2));
    _tasks
        .where((element) => element.getId() == id)
        .first
        .setCompleted(completed);
  }

  Future<List<Task>> list() async {
    await Future.delayed(const Duration(seconds: 2));
    return _tasks;
  }
}
