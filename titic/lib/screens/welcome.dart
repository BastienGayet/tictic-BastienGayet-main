import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titic/screens/home_screen.dart';
import 'package:titic/screens/register.dart';

import '../main_button.dart';
import '../style/font.dart';
import '../style/spacings.dart';

class Welcome extends StatelessWidget {
  // on decrit une classe
  static const routeName = '/';
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/back1.png"),
              fit: BoxFit.fill,
            )),
        child: SafeArea(
          // Il prendre tjrs qu'un seul enfant ( pour simplifier cliquer sur coloumn et rajouter widget ( le 1er)
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mettre spacebetween apres // c'est parceque c'est une row
              children: [
                SvgPicture.asset(
                  "assets/icons/logo.svg",
                  height: kProfileSize,
                ),
                const SizedBox(
                  height: kVerticalPaddingL,
                ),

                const Text(
                  "L'harmonie financière dans vos groupes, en toute simplicité !",
                  style: kItalicText, textAlign: TextAlign.center,
                ),
                const SizedBox(height: kVerticalPaddingL),
                MainButton(
                    text: "Continuer sans compte", onTap: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                }, isMain: true),
                Column(
                  children: [
                    const SizedBox(
                      height: 280,
                    ),
                    Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Divider(
                                  thickness: 2,
                                  color: Colors.green,
                                )
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text("OU"),
                            ),
                            Expanded(
                                child: Divider(
                                  thickness: 2,
                                  color: Colors.green,
                                )
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainButton(
                                text: "Je me connecte",
                                onTap: () {},
                                isMain: false),
                            const SizedBox(width: 30,),
                            MainButton(
                                text: "Créer un compte", onTap: () => Navigator.pushNamed(context, Register.routeName),
                                isMain: false),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// item builder   param qu'on peut ajouter et prend en valeur une fonction de callback
//il prend seulement  le context et index