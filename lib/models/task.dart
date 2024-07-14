// lib/models/task.dart
import 'package:isar/isar.dart';

part 'task.g.dart';

@Collection()
class Task {
  Id id = Isar.autoIncrement;

  late String title;
  late String duration;
  bool isDone = false;

  Task();
  Task.create(this.title, this.duration);
}
