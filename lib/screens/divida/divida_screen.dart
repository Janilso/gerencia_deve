import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gerencia_deve/screens/divida/divida_especific.dart';
import 'package:gerencia_deve/utils/components/custom_app_bar.dart';
import 'package:gerencia_deve/utils/components/custom_card.dart';
import 'package:gerencia_deve/utils/components/custom_floating_acrion_button.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class DividaScreen extends StatefulWidget {
  @override
  _DividaScreenState createState() => _DividaScreenState();
}

class _DividaScreenState extends State<DividaScreen> {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(texto: "Dívidas de Nome Cliente"),
      backgroundColor: secondary,
      bottomNavigationBar: Container(
        color: colorBlueWhite,
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Total a receber de Cliente: ", style: heading18MediumPrimary),
            Text("R\$ 10,00", style: heading18BoldPrimary),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 25),
          Expanded(
            child: Scrollbar(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, index) {
                    return CustomCard(
                      onTap: () => Navigator.push(context,
                          CupertinoPageRoute(builder: (_) => DividaSpecific())),
                      title: 'Nome Client',
                      subTitle: 'R\$ 70,00',
                      indicator: true,
                      indicatorColor: redColor,
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
