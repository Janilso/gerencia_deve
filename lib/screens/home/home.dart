import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/components/custom_app_bar.dart';
import 'package:gerencia_deve/utils/components/custom_card.dart';
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
      bottomNavigationBar: Container(
        color: colorBlueWhite,
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Total: ", style: heading18MediumPrimary),
            Text("R\$ 10,00", style: heading18BoldPrimary),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 25, top: 30),
            child: Text("Clientes".toUpperCase(), style: heading18White600),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: CustomCard(
                          title: 'Nome Client', subTitle: 'R\$ 70,00'),
                    );
                  }),
            ),
          ),
        ],
      ),
      floatingActionButton: CustonFloatingActionButton(
        icon: Icons.add,
        onPressed: () {},
      ),
    );
  }
}
