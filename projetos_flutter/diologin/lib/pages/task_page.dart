import 'package:diologin/model/task.dart';
import 'package:diologin/repositories/task_repository.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  var _tasks = const <Task>[];
  TaskRepository taskRepository = TaskRepository();
  TextEditingController taskController = TextEditingController(text: '');

  void getTasks() async {
    _tasks = await taskRepository.list();
    setState(() {});
  }

  @override
  void initState() {
    getTasks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          taskController.text = "";
          showDialog(
              context: context,
              builder: (BuildContext bc) {
                return AlertDialog(
                  title: const Text("Adicionar Tarefa"),
                  content: TextField(
                    controller: taskController,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancelar"),
                    ),
                    TextButton(
                      onPressed: () async {
                        await taskRepository
                            .add(Task(taskController.text, false));
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: const Text("Sim"),
                    ),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView.builder(
            itemCount: _tasks.length,
            itemBuilder: (BuildContext bc, int index) {
              var task = _tasks[index];
              return Dismissible(
                onDismissed: (direction) async {
                  await taskRepository.remove(task.getId());
                  getTasks();
                },
                key: Key(task.getId()),
                child: ListTile(
                  title: Text(task.getDescription()),
                  trailing: Switch(
                    onChanged: (value) async {
                      await taskRepository.alterar(task.getId(), value);
                      getTasks();
                    },
                    value: task.getCompleted(),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
