import 'package:flutter/material.dart';
import 'package:gerencia_deve/utils/theme/style.dart';

class LabelValue extends StatelessWidget {
  final String label;
  final String value;

  const LabelValue({Key key, this.label = '', this.value = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Text(label, style: heading16SemiBoldWhite),
        SizedBox(height: 3),
        Text(value, style: heading14RegularWhite, textAlign: TextAlign.justify),
        SizedBox(height: 10),
        Divider(height: 2, color: whiteColor)
      ],
    );
  }
}
