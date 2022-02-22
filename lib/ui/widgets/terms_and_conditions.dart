import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  final EdgeInsets margin;

  const TermsAndConditions({
    Key? key,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: margin,
      child: Text(
        'Terms and Conditions',
        style: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
