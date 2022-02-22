import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class NavItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const NavItem({Key? key, required this.imageUrl, this.isActive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imageUrl)),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: isActive ? kPrimaryColor : kTransparentColor,
              borderRadius: BorderRadius.circular(18)),
        )
      ],
    );
  }
}
