import 'dart:math';

import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/font.dart';
import '../style/spacings.dart';
import '../widgets/expansion_tile.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  final items = [
    'Total à payer',
    'Total à recevoir',
    'Dernière transaction',
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // pour le homeScreen le scafild est obligatoire car on va utilisé un burgermenu
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kVerticalPaddingL,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipOval(
                  child: Image.asset(
                    "assets/img/dog.png",
                    width: kProfileSize,
                    height: kProfileSize,
                    fit: BoxFit.cover,
                    //permet de dire comment l'image doit etre adapté si on a pas assez de place.Cela peut déformer l'image
                  ),
                ),
              ),
              const SizedBox(
                height: kVerticalPaddingL,
              ),
              const Text(
                "Bonjour Bastien!",
                style: kTitleHome,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding,
                ),
                height: 135,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/back-slider.png")),
                ),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        index == 0
                            ? const SizedBox(
                                width: kHorizontalPadding,
                              )
                            : Container(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: kHorizontalPaddingS,
                            vertical: kVerticalPaddingS,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: kBackgroundColor.withOpacity(0.7)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                items[index],
                                textAlign: TextAlign.right,
                                style: kTextSideBar,
                              ),
                              Text(
                                "${Random().nextInt(1000)}€",
                                style: kTitleHome,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: kHorizontalPadding,
                        ),
                      ],
                    );
                  },
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Vos groupes",
                    style: kTextTabItem,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding,
                  horizontal: kHorizontalPadding,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: kVerticalPadding,
                  horizontal: kHorizontalPadding,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Première ligne de texte à gauche et à droite
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Voyage à Sainte-Maxime",
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          "1200€",
                          style: TextStyle(
                            color: kTertiaryColor,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),

                    // Deuxième ligne avec une image à gauche et du texte à droite
                    Row(

                      children: [
                        // Image à gauche
                        ClipOval(
                          child: Image.asset(
                            'assets/img/team-1.png',
                            width: kProfileSizeSmall,
                            height: kProfileSizeSmall,
                          ),
                        ),
                        const SizedBox(width: 2.0),

                        // Texte à droite de l'image
                        const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "#Voyage#Vacance#Anciens",
                                  style: TextStyle(
                                    color: kTertiaryColor,
                                    fontSize: 10.0,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(width: kHorizontalPaddingXL),
                                // Ajoutez un espacement horizontal
                                //Spacer(),
                                Text(
                                  "80€",
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                            SizedBox(
                              height: kVerticalPadding,
                            ),
                            Row(
                              children: [
                                Text(
                                  "6 participants",
                                  style: TextStyle(
                                    color: kMainColor,
                                    fontSize: 10.0,
                                  ),
                                ),

                                SizedBox(width: 50),
                                // Ajoutez un espacement horizontal
                                Text(
                                  "Depuis le 16 juillet 2023",
                                  style: TextStyle(
                                      color: kTertiaryColor, fontSize: 10.0),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const ExpansionTile(title: Text('Masquer vos transaction'),
              children: [
                CustomExpansionTileContent(
                  date: '30/07/2023',
                  title: 'Arnaud Dépense',
                  amount: '300.00€',
                  color: Colors.red,
                ),
                CustomExpansionTileContent(
                  date: '1/08/2023',
                  title: 'Céline course',
                  amount: '51.23€',
                  color: Colors.red,
                ),
                CustomExpansionTileContent(
                  date: '1/08/2023',
                  title: 'Pierre-Alain Dépense',
                  amount: '302.12€',
                  color: Colors.red,
                ),
              ],),
              

            ],
          ),
        ),
      ),
    );
  }
}
