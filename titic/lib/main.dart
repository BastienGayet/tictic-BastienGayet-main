import 'package:flutter/material.dart';

import 'package:titic/routes.dart';


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
      routes: routes,
    );
  }
}
// 2 types d'alignement le mainacces ( vertical)
// et le CrossAxisAligment
// on utilise un container pour pour l'image
//safeaera permet d'avoir des elements dans une zone safe ( pas de widget sur les encoches du telephone
// le main.dart doit etre propre
// ne pas avoir de classe dans le fichier
