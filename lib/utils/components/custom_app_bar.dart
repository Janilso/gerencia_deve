import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String texto;
  final TextStyle styleAppBar;

  @override
  final Size preferredSize;

  CustomAppBar({
    @required this.texto,
    this.styleAppBar,
  }) : preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 10,
      title: Text(texto, style: styleAppBar ?? styleAppBar),
      centerTitle: true,
      flexibleSpace: Container(decoration: BoxDecoration(color: secondary)),
    );
  }
}
