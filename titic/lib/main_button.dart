import 'package:flutter/material.dart';
import 'package:titic/style/colors.dart';
import 'package:titic/style/font.dart';
import 'package:titic/style/spacings.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isMain;

  const MainButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.isMain});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Test coucou");
      },
      child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: kVerticalPaddingS, horizontal: kHorizontalPaddingS),
          decoration: BoxDecoration(
              color: kMainColor, borderRadius: BorderRadius.circular(20)),
          child:Text(
            text,
            style: kButtonStyle,
          )),
    );
  }
}
