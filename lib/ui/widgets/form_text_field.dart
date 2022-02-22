import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String label;
  final String hint;
  final bool obscure;

  const FormTextField(
      {Key? key, required this.label, required this.hint, this.obscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 6),
          TextFormField(
            cursorColor: kBlackColor,
            obscureText: obscure ? true : false,
            decoration: InputDecoration(
                hintText: hint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius))),
          )
        ],
      ),
    );
  }
}
