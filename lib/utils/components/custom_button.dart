import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final GestureTapCallback onPressed;
  final bool hasIcon;
  final bool outline;
  final IconData icon;
  final double width;
  final Color textColor;
  final Color bgColor;
  final List<Color> gradientColorBg;

  CustomButton({
    @required this.onPressed,
    @required this.text,
    this.hasIcon = false,
    this.outline = false,
    this.textColor = secondary,
    this.bgColor = primaryColor,
    this.gradientColorBg,
    this.icon,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      color: transparentColor,
      elevation: 8,
      child: Container(
        height: 50,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
            width: 2,
            style: outline ? BorderStyle.solid : BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: gradientColorBg ?? [bgColor, bgColor],
          ),
        ),
        child: SizedBox.expand(
          child: FlatButton(
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Visibility(
                  child: Container(child: Icon(icon, color: Colors.white)),
                  visible: hasIcon,
                ),
                Expanded(
                  child: Text(
                    "$text".toUpperCase(),
                    style: TextStyle(
                        color: textColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
