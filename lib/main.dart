import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug条
      theme: ThemeData(
        primaryColor: Color(0xFF0C4E8A), // 主色调
        canvasColor: Color(0xFFF5F3E4), // 背景色
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFF2E2424),
            fontSize: 16.0,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFF5F3E4),
          foregroundColor: Color(0xFF2E2424),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFF5F3E4),
          unselectedItemColor: Color(0xFF2E2424),
          selectedItemColor: Color(0xFF0C4E8A),
          showUnselectedLabels: true, // 始终显示标签
        ),
      ),
      home: HomeScreen(),
    );
  }
}
