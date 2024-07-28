// lib/main.dart
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'models/task.dart';
import 'screens/home_screen.dart';
import 'theme/app_theme.dart';

late Isar isar; // 声明一个 Isar 实例

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  isar = await Isar.open(
    [TaskSchema],
    directory: dir.path,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug条
      theme: AppTheme.lightTheme, // 使用封装好的主题
      home: const HomeScreen(),
    );
  }
}
