import 'package:diologin/model/task.dart';
import 'package:diologin/repositories/task_repository.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  TaskRepository taskRepository = TaskRepository();
  TextEditingController taskController = TextEditingController(text: '');

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
                      onPressed: () {
                        taskRepository.add(Task(taskController.text, false));
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
      body: Container(),
    );
  }
}
