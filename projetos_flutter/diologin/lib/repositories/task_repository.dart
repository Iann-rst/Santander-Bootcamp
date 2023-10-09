import 'package:diologin/model/task.dart';

class TaskRepository {
  final List<Task> _tasks = [];

  Future<void> add(Task task) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tasks.add(task);
  }

  Future<void> alterar(String id, bool completed) async {
    await Future.delayed(const Duration(milliseconds: 0));
    _tasks
        .where((element) => element.getId() == id)
        .first
        .setCompleted(completed);
  }

  Future<List<Task>> list() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return _tasks;
  }

  Future<void> remove(String id) async {
    await Future.delayed(const Duration(microseconds: 100));
    _tasks.remove(_tasks.where((task) => task.getId() == id).first);
  }
}
