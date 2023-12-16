
import 'package:flutter/material.dart';
import 'package:titic/style/colors.dart';
import 'package:titic/style/font.dart';
import 'package:titic/style/spacings.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isMain;

  const MainButton(
      {super.key,
      required this.text, // this. quelque chose  et paire {}permet d'avoir un param nommée
      required this.onTap, // si on met pas ça on aura une erreur
      this.isMain = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: kVerticalPaddingS,
              horizontal: kHorizontalPaddingS),
          decoration: BoxDecoration(
              color: isMain ? kMainColor : kTertiaryColor,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            text,
            style: isMain ? kButtonStyle : kButtonStyle2,
          )),
    );
  }
}
