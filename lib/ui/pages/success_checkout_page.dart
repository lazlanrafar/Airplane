import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/btn_primary.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_success.png',
              width: 300,
              height: 150,
            ),
            const SizedBox(height: 80),
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              textAlign: TextAlign.center,
              style: grayTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            const SizedBox(height: 50),
            BtnPrimary(
              text: 'My Bookings',
              width: 220,
              onPressed: () {
                Navigator.pushNamed(context, '/main');
              },
            ),
          ],
        ),
      ),
    );
  }
}
