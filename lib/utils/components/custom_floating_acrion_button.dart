import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class CustonFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const CustonFloatingActionButton(
      {Key key, @required this.onPressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [primaryColor, orange],
          ),
          shape: BoxShape.circle),
      child: Icon(
        icon,
        color: whiteColor,
      ),
    );
  }
}
