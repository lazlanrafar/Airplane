import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/ui/widgets/btn_primary.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  Widget seatStatus() {
    Widget seatStatusItem({required String imageUrl, required String text}) {
      return Container(
        margin: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              text,
              style: blackTextStyle,
            )
          ],
        ),
      );
    }

    return Row(
      children: [
        seatStatusItem(
          imageUrl: 'assets/icon_available.png',
          text: 'Available',
        ),
        seatStatusItem(
          imageUrl: 'assets/icon_selected.png',
          text: 'Selected',
        ),
        seatStatusItem(
          imageUrl: 'assets/icon_unavalilable.png',
          text: 'Unavailable',
        ),
      ],
    );
  }

  Widget selectSeat() {
    Widget seatIndicator() {
      Widget cardSeatIndicator({required String text}) {
        return SizedBox(
          width: 48,
          height: 48,
          child: Center(
            child: Text(
              text,
              style: grayTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        );
      }

      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          cardSeatIndicator(text: 'A'),
          cardSeatIndicator(text: 'B'),
          cardSeatIndicator(text: ''),
          cardSeatIndicator(text: 'C'),
          cardSeatIndicator(text: 'D'),
        ],
      );
    }

    Widget rowSeat({
      required String seatA,
      required String seatB,
      required String seatC,
      required String seatD,
      required double noRow,
    }) {
      Widget seatItem({String status = 'Available'}) {
        return GestureDetector(
          onTap: () {
            if (status == 'Available') {
              status = 'Selected';
            } else if (status == 'Selected') {
              status = 'Available';
            }
          },
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              border: Border.all(
                color:
                    status == 'Available' ? kPrimaryColor : Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(18),
              color: status == 'Available'
                  ? const Color(0xffE0D9FF)
                  : status == 'Selected'
                      ? kPrimaryColor
                      : const Color(0xffEBECF1),
            ),
            child: Center(
              child: Text(
                status == 'Selected' ? "YOU" : "",
                style: whiteTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
            ),
          ),
        );
      }

      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            seatItem(status: seatA),
            seatItem(status: seatB),
            SizedBox(
              width: 48,
              height: 48,
              child: Center(
                child: Text(
                  noRow.toString(),
                  style: grayTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            seatItem(status: seatC),
            seatItem(status: seatD),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: kWhiteColor,
      ),
      child: Column(
        children: [
          seatIndicator(),
          rowSeat(
            seatA: 'Unavailable',
            seatB: 'Unavailable',
            seatC: 'Available',
            seatD: 'Unavailable',
            noRow: 1,
          ),
          rowSeat(
            seatA: 'Available',
            seatB: 'Available',
            seatC: 'Available',
            seatD: 'Unavailable',
            noRow: 2,
          ),
          rowSeat(
            seatA: 'Selected',
            seatB: 'Selected',
            seatC: 'Available',
            seatD: 'Available',
            noRow: 3,
          ),
          rowSeat(
            seatA: 'Available',
            seatB: 'Unavailable',
            seatC: 'Available',
            seatD: 'Available',
            noRow: 4,
          ),
          rowSeat(
            seatA: 'Available',
            seatB: 'Available',
            seatC: 'Unavailable',
            seatD: 'Available',
            noRow: 5,
          ),

          // NOTE : Description

          Container(
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your seat',
                      style: grayTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'A3, B3',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: grayTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      'IDR 540.000.000',
                      style: purpleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Select Your\nFavorite Seat',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 30),
          seatStatus(),
          selectSeat(),
          const SizedBox(height: 44),
          BtnPrimary(
            text: 'Continue to Checkout',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckoutPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
