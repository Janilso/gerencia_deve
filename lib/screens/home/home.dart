import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/components/custom_app_bar.dart';
import 'package:gerencia_deve/utils/components/custom_floating_acrion_button.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        texto: "LOGO",
      ),
      backgroundColor: secondary,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: primaryColor,
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      floatingActionButton: CustonFloatingActionButton(
        icon: Icons.add,
        onPressed: () {},
      ),
    );
  }
}
