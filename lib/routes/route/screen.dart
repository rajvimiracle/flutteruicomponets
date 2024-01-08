import 'package:flutter/material.dart';
import 'package:flutteruicomponets/componets/loginandregister/animatedbackgroundpage.dart';
import 'package:flutteruicomponets/componets/loginandregister/darkloginpage.dart';
import 'package:flutteruicomponets/componets/loginandregister/lightloginpage.dart';
import 'package:flutteruicomponets/componets/loginandregister/logilistscreen/loginandregisterListScreen.dart';
import 'package:flutteruicomponets/componets/loginandregister/simpleloginpage.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:get/get.dart';



class Screens{
  static final routes = [
    GetPage(name: Routes.loginpage, page: () => LoginRegisterListScreen()),
    GetPage(name: Routes.darkloginpage, page: () => DarkLoginPage()),
    GetPage(name: Routes.animatedpage, page: () => Animatedbackgroundpage()),
    GetPage(name: Routes.lightpage, page: () => Lightloginpage()),
    GetPage(name: Routes.simplepage, page: () => Simpleloginpage()),

  ];
}