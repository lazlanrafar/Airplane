import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout_page.dart';
import 'package:airplane/ui/widgets/btn_primary.dart';
import 'package:airplane/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header({
      required String fromCode,
      required String fromCity,
      required String toCode,
      required String toCity,
    }) {
      Widget location({
        required String code,
        required String city,
        bool textStart = true,
      }) {
        return Column(
          crossAxisAlignment:
              textStart ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            Text(
              code,
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            Text(
              city,
              style: grayTextStyle.copyWith(
                fontWeight: light,
              ),
            )
          ],
        );
      }

      return Column(
        children: [
          Image.asset(
            'assets/image_checkout.png',
            width: 291,
            height: 65,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              location(
                code: fromCode,
                city: fromCity,
                textStart: true,
              ),
              location(
                code: toCode,
                city: toCity,
                textStart: false,
              ),
            ],
          )
        ],
      );
    }

    Widget bookingDetails() {
      Widget dataTable({
        required String text,
        required String value,
        required Color valueColor,
      }) {
        return Container(
          margin: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                  )
                ],
              ),
              Text(
                value,
                style: TextStyle(
                  color: valueColor,
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        );
      }

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: const DecorationImage(
                      image: AssetImage('assets/image_destination5.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Tangerang',
                        style: grayTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_start.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            dataTable(
              text: 'Traveler',
              value: '2 person',
              valueColor: kBlackColor,
            ),
            dataTable(
              text: 'Seat',
              value: 'A3, B3',
              valueColor: kBlackColor,
            ),
            dataTable(
              text: 'Insurance',
              value: 'YES',
              valueColor: kGreenColor,
            ),
            dataTable(
              text: 'Refundable',
              value: 'NO',
              valueColor: kRedColor,
            ),
            dataTable(
              text: 'VAT',
              value: '45%',
              valueColor: kBlackColor,
            ),
            dataTable(
              text: 'Price',
              value: 'IDR 8.500.690',
              valueColor: kBlackColor,
            ),
            dataTable(
              text: 'Grand Total',
              value: 'IDR 12.000.000',
              valueColor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_plane.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Current Balance',
                      style: grayTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              children: [
                header(
                  fromCode: 'CGK',
                  fromCity: 'Tangerang',
                  toCode: 'TGL',
                  toCity: 'Tegal',
                ),
                const SizedBox(height: 30),
                bookingDetails(),
                paymentDetails(),
                const SizedBox(height: 30),
                BtnPrimary(
                  text: 'Pay Now',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessCheckoutPage(),
                      ),
                    );
                  },
                ),
                const TermsAndConditions(
                  margin: EdgeInsets.symmetric(vertical: 30),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
