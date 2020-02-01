import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class Circle extends StatelessWidget {
  final double size;
  final Color color;
  final bool border;
  final Color borderColor;

  const Circle({
    Key key,
    this.size = 35,
    this.color = redColor,
    this.border = false,
    this.borderColor = whiteColor,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          border: border
              ? Border.all(
                  color: borderColor, width: 1.5, style: BorderStyle.solid)
              : Border(),
          color: color,
          shape: BoxShape.circle),
    );
  }
}
