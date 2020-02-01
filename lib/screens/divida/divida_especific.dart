import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/components/circle.dart';
import 'package:gerencia_deve/utils/components/custom_app_bar.dart';
import 'package:gerencia_deve/utils/components/custom_button.dart';
import 'package:gerencia_deve/utils/components/label_value.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class DividaSpecific extends StatefulWidget {
  @override
  _DividaSpecificState createState() => _DividaSpecificState();
}

class _DividaSpecificState extends State<DividaSpecific> {
  Size screenSize;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(texto: "Detalhes da Dívidas"),
      backgroundColor: secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Detalhes", style: heading20BoldWhite),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Expanded(
                        child:
                            LabelValue(label: 'Título', value: 'Nome Serviço'))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: LabelValue(
                          label: 'Descrição',
                          value:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: LabelValue(label: 'Data', value: '20/02/2020')),
                    Expanded(
                        child: LabelValue(label: 'Data', value: '20/02/2020')),
                  ],
                ),
                LabelValue(label: 'Data', value: '20/02/2020'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Circle(),
                      SizedBox(width: 10),
                      Text('Status: ', style: heading16SemiBoldWhite),
                      Text('Devendo', style: heading14RegularWhite),
                    ],
                  ),
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'Pagar a parte',
                  outline: true,
                  textColor: primaryColor,
                  bgColor: secondary,
                ),
                SizedBox(height: 20),
                CustomButton(
                  onPressed: () {},
                  text: 'Pagar valor total',
                  gradientColorBg: [orange, primaryColor],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
