import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  const BottomNavItem({
    Key key,
    this.icon, this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Icon(
      icon,
      size: 30,
      color: color != null ? color : Colors.black,
    ));
  }
}
