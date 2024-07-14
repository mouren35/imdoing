// navigation_bar.dart
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFFF5F3E4), // 设置 BottomNavigationBar 背景色
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.public), // 动态图标
          label: '动态',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list), // 清单图标
          label: '清单',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month), // 日历图标
          label: '日志',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), // 我的图标
          label: '我的',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFF0C4E8A), // 选中的颜色
      onTap: onTap,
      type: BottomNavigationBarType.fixed, // 去掉动画效果
    );
  }
}
