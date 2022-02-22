import 'package:airplane/ui/widgets/btn_primary.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
          width: 300,
          height: 211,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/image_card.png')),
              boxShadow: [
                BoxShadow(
                    color: kPrimaryColor.withOpacity(0.5),
                    blurRadius: 50,
                    offset: const Offset(0, 10)),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Kezia Anne',
                          style: whiteTextStyle.copyWith(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/icon_plane.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Pay',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(height: 41),
              Text(
                'Balance',
                style: whiteTextStyle.copyWith(fontWeight: light),
              ),
              Text(
                'IDR 280.000.000',
                style: whiteTextStyle.copyWith(
                  fontSize: 26,
                  fontWeight: medium,
                ),
              )
            ],
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            const SizedBox(height: 80),
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(fontSize: 32, fontWeight: medium),
            ),
            const SizedBox(height: 10),
            Text(
              'We give you early credit so that\nyou can buy a flight ticket',
              style: grayTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            BtnPrimary(
                text: 'Start Fly Now',
                margin: EdgeInsets.only(top: 50),
                width: 220,
                onPressed: () {
                  Navigator.pushNamed(context, '/main');
                })
          ],
        ),
      ),
    );
  }
}
