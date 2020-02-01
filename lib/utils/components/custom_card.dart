import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/components/circle.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class CustomCard extends StatelessWidget {
  final GestureTapCallback onTap;
  final List<Color> colorsGradient;
  final String image;
  final String title;
  final String subTitle;
  final IconData icon;
  final bool indicator;
  final Color indicatorColor;
  final double sizeIndicator;

  const CustomCard(
      {Key key,
      this.onTap,
      this.colorsGradient,
      this.image = 'assets/images/place-holder.png',
      this.title = '',
      this.subTitle = '',
      this.indicator = false,
      this.indicatorColor = secondary,
      this.sizeIndicator = 10,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 10,
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: colorsGradient ?? [orange, primaryColor],
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(50.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: Image.asset(image, fit: BoxFit.cover),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    color: whiteColor.withOpacity(0.5),
                    width: 1,
                    height: 35,
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title, style: heading20Secundary800),
                    Row(
                      children: <Widget>[
                        Visibility(
                          visible: indicator,
                          child: Circle(border: true, size: sizeIndicator),
                        ),
                        SizedBox(width: 5),
                        Text(subTitle.toUpperCase(), style: heading14Bold),
                      ],
                    ),
                  ],
                )),
                Icon(icon ?? Icons.arrow_forward_ios, size: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
