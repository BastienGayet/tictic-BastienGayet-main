import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:titic/main_button.dart';
import 'package:titic/style/spacings.dart';
import 'package:titic/widgets/forms/text_input.dart';
import '../style/font.dart';


class Register extends StatelessWidget {
  // pas de maj dans les nom de fichier
  static const routeName = '/register';
  final _registerKey = GlobalKey<FormState>();
  Register({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(//faire une nouvelle page
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/back1.png"),
              fit: BoxFit.fill,
            )),
        child: SafeArea(
          // Il prendre tjrs qu'un seul enfant ( pour simplifier cliquer sur coloumn et rajouter widget ( le 1er)
          child: Padding(// container est un des rare widget qui a deja le padding
            padding: const EdgeInsets.symmetric(vertical: kVerticalPaddingL),
            child: Form(
              key:  _registerKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mettre spacebetween apres
                children: [
                  SvgPicture.asset(
                    "assets/icons/logo.svg",
                    height: kProfileSize,
                  ),
                  Container(margin: EdgeInsets.symmetric(horizontal:50.0 ,vertical: 8.0),
                    child: TextInput(
                    prefixIcon: Icons.person,
                    hintText: 'Toto',
                    labelText: 'Prénom',
                    validator: (String? value) {
                      if(value == null || value.trim().isEmpty){
                        return 'Veuillez renseigner un prénom';
                      }
                    },
                ),
                  ),
                    Container(margin: EdgeInsets.symmetric(horizontal:50.0 ,vertical: 8.0),
                      child: TextInput(
                        prefixIcon: Icons.person,
                        hintText: 'Doe',
                        labelText: 'Nom',
                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Veuillez renseigner un nom';
                          }
                        },
                      ),
                    ),
                    Container(margin: EdgeInsets.symmetric(horizontal:50.0 ,vertical: 8.0),
                      child: TextInput(
                        prefixIcon: Icons.mail,
                        hintText: 'toto.doe@example.com',
                        labelText: 'Adresse e-mail',
                        validator: (String? value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              !value.contains('@')) {
                            return 'Veuillez renseigner une adresse e-mail valide';
                          }
                        },
                      ),
                    ),
                    Container(margin: EdgeInsets.symmetric(horizontal:50.0 ,vertical: 8.0),
                      child: TextInput(
                        prefixIcon: Icons.lock,
                        hintText: '********',
                        labelText: 'Mot de passe',
                        validator: (String? value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Veuillez renseigner un mot de passe';
                          }
                        },
                      ),
                    ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 8.0),
                    alignment:Alignment.centerRight,
                    child: MainButton(text: "Créer un compte ", onTap: (){//valider formulaire
                      if(_registerKey.currentState != null && _registerKey.currentState!.validate()){// faire formulaire register et login et commencer nav vers la homescreen

                      }
                    }, isMain: true,),
                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
