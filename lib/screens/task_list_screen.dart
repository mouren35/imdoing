// lib/screens/task_list_screen.dart
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../main.dart';
import '../models/task.dart';
import '../widgets/task_list_item.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({super.key});

  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
    _loadTasks();
  }

  Future<void> _loadTasks() async {
    final tasksFromDb = await isar.tasks.where().findAll();
    setState(() {
      tasks = tasksFromDb;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ExpansionTile(
            leading: const Icon(
              Icons.menu,
              color: Colors.deepPurple,
              size: 24.0,
            ),
            title: const Text(
              '我在',
              style: TextStyle(
                color: Color(0xFF2E2424),
                fontSize: 16.0,
              ),
            ),
            trailing: Text(
              '${tasks.length}项',
              style: const TextStyle(
                color: Color(0xFF2E2424),
                fontSize: 16.0,
              ),
            ),
            children: tasks.map((task) => TaskListItem(task: task)).toList(),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF5F3E4), // 设置 Scaffold 背景色
    );
  }
}
