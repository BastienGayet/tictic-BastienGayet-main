
import 'package:flutter/material.dart';
import 'package:titic/screens/home_screen.dart';
import 'package:titic/screens/register.dart';
import 'package:titic/screens/welcome.dart';
// il faut mettre _Screen a la fin pour chaque écran
// si on commence on le fait jusqu'au bout
//ils ont tous au moin un scafold
//context = une fonction anonyme
Map<String, WidgetBuilder> routes =  {
  Welcome.routeName : (context)=>const Welcome(),
  Register.routeName : (context) => Register(),
  HomeScreen.routeName:(context) =>  HomeScreen(),

};