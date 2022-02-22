import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin:
          EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nKezia Anne',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Where to fly today? ',
                  style: grayTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget popularDestination() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              title: 'Payung Teduh',
              location: 'Bali, Indonesia',
              star: '4.8',
              imageUrl: 'assets/image_destination1.png',
            ),
            DestinationCard(
              title: 'Payung Teduh',
              location: 'Bali, Indonesia',
              star: '4.8',
              imageUrl: 'assets/image_destination2.png',
            ),
            DestinationCard(
              title: 'Payung Teduh',
              location: 'Bali, Indonesia',
              star: '4.8',
              imageUrl: 'assets/image_destination3.png',
            ),
            DestinationCard(
              title: 'Payung Teduh',
              location: 'Bali, Indonesia',
              star: '4.8',
              imageUrl: 'assets/image_destination4.png',
            ),
            DestinationCard(
              title: 'Payung Teduh',
              location: 'Bali, Indonesia',
              star: '4.8',
              imageUrl: 'assets/image_destination5.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget newDestination() {
    return Container(
      margin: EdgeInsets.only(
          top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const DestinationTile(
            imageUrl: 'assets/image_destination1.png',
            title: 'Payung Teduh',
            location: 'Bali, Indonesia',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'assets/image_destination2.png',
            title: 'Payung Teduh',
            location: 'Bali, Indonesia',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'assets/image_destination3.png',
            title: 'Payung Teduh',
            location: 'Bali, Indonesia',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'assets/image_destination4.png',
            title: 'Payung Teduh',
            location: 'Bali, Indonesia',
            rating: '4.8',
          ),
          const DestinationTile(
            imageUrl: 'assets/image_destination5.png',
            title: 'Payung Teduh',
            location: 'Bali, Indonesia',
            rating: '4.8',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
