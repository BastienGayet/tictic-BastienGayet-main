import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:titic/style/font.dart';
import 'package:titic/style/spacings.dart';

import 'main_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Material(child: WelcomeScreen()),
    );
  }
}
// 2 types d'alignement le mainacces ( vertical)
// et le CrossAxisAligment
// on utilise un container pour pour l'image
//safeaera permet d'avoir des elements dans une zone safe ( pas de widget sur les encoches du telephone

class WelcomeScreen extends StatelessWidget {
  // on decrit une classe
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            // mettre spacebetween apres
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
                  style: kItalicText),
              SizedBox(height: kVerticalPaddingL),
             /* Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 10,
                          margin: const EdgeInsets.symmetric(vertical: kVerticalPaddingS, horizontal: kHorizontalPaddingS),
                          color: Colors.green,
                        );
                      },
                    ),
                  ),
                ],
              ),*/
              MainButton(
                  text: "Continuer sans compte", onTap: () {}, isMain: false),
              Column(
                children: [
                  SizedBox(
                    height: 280,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 2,
                            color: Colors.green,
                          )),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text("OU"),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 2,
                            color: Colors.green,
                          )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MainButton(
                              text: "Je me connecte",
                              onTap: () {},
                              isMain: false),
                          SizedBox(width: 25,),
                          MainButton(
                              text: "Créer un compte",
                              onTap: () {},
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
    );
  }
}
