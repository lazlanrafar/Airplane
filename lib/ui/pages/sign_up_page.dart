import 'package:airplane/ui/widgets/btn_primary.dart';
import 'package:airplane/ui/widgets/form_text_field.dart';
import 'package:airplane/ui/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget title() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Text(
        'Join us and get\nyour next journey',
        style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
      ),
    );
  }

  Widget inputSection([BuildContext? context]) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            const FormTextField(label: 'Full Name', hint: 'your full name'),
            const FormTextField(
                label: 'Email Address', hint: 'your email address'),
            const FormTextField(
              label: 'Password',
              obscure: true,
              hint: 'your password',
            ),
            const FormTextField(
              label: 'Hobby',
              hint: 'your hobby',
            ),
            BtnPrimary(
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushNamed(context!, '/bonus');
                })
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(context),
            const TermsAndConditions(
              margin: EdgeInsets.only(top: 30),
            ),
          ],
        ),
      ),
    );
  }
}
