import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BtnPrimary extends StatelessWidget {
  final String text;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;

  const BtnPrimary(
      {Key? key,
      required this.text,
      this.width = double.infinity,
      this.margin = EdgeInsets.zero,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius))),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      ),
    );
  }
}
