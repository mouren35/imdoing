// lib/widgets/task_list_item.dart
import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskListItem extends StatefulWidget {
  final Task task;

  const TaskListItem({required this.task, super.key});

  @override
  State<TaskListItem> createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Transform.scale(
        scale: 1.25, // 调整 CheckBox 的大小
        child: Theme(
          data: ThemeData(
            unselectedWidgetColor: Colors.deepPurple, // 设置未选中状态的颜色
          ),
          child: Checkbox(
            shape: const CircleBorder(), // 设置复选框为圆形
            activeColor: Colors.deepPurple, // 设置激活状态的颜色
            value: widget.task.isDone,
            onChanged: (bool? value) {
              setState(() {
                widget.task.isDone = value!;
              });
            },
          ),
        ),
      ),
      title: Text(
        widget.task.title,
        style: TextStyle(
          color: const Color(0xFF2E2424),
          fontSize: 16.0,
          decoration: widget.task.isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Text(
        widget.task.duration,
        style: const TextStyle(
          color: Color(0xFF2E2424),
          fontSize: 16.0,
        ),
      ),
    );
  }
}
