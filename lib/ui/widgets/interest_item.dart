import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String text;

  const InterestItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Image.asset(
            'assets/icon_check.png',
            width: 16,
            height: 16,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }
}
