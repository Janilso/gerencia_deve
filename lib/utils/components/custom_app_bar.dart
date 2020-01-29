import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @required
  final String texto;

  @override
  final Size preferredSize;

  CustomAppBar({this.texto}) : preferredSize = Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 10,
      title: Text(texto),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: BoxDecoration(color: secondary),
      ),
    );
  }
}
