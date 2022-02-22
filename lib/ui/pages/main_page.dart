import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/nav_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget Navbar() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              NavItem(
                imageUrl: 'assets/icon_home.png',
                isActive: true,
              ),
              NavItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              NavItem(
                imageUrl: 'assets/icon_card.png',
              ),
              NavItem(
                imageUrl: 'assets/icon_settings.png',
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          Navbar(),
        ],
      ),
    );
  }
}
