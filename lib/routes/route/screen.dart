import 'package:flutter/material.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewPage/expandablelistpage.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewPage/recrderablelistpage.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewPage/selectionlistpage.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewPage/swappablelistpage.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewScreen.dart';
import 'package:flutteruicomponets/componets/loginandregister/loginpage/animatedbackgroundpage.dart';
import 'package:flutteruicomponets/componets/loginandregister/loginpage/darkloginpage.dart';
import 'package:flutteruicomponets/componets/loginandregister/loginpage/lightloginpage.dart';
import 'package:flutteruicomponets/componets/loginandregister/logilistscreen/loginandregisterListScreen.dart';
import 'package:flutteruicomponets/componets/loginandregister/loginpage/simpleloginpage.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:get/get.dart';

import '../../componets/ListView/ListViewPage/bouncylistpage.dart';
import '../../componets/ListView/ListViewPage/sildablelist.dart';
import '../../componets/ListView/ListViewPage/simplelistpage/simplelistpage.dart';



class Screens{
  static final routes = [
    GetPage(name: Routes.loginpage, page: () => LoginRegisterListScreen()),
    GetPage(name: Routes.darkloginpage, page: () => DarkLoginPage()),
    GetPage(name: Routes.animatedpage, page: () => Animatedbackgroundpage()),
    GetPage(name: Routes.lightpage, page: () => Lightloginpage()),
    GetPage(name: Routes.simplepage, page: () => Simpleloginpage()),

  ];
}
class Screens1{
static final routes1 = [
  GetPage(name: Routes1.listpagge, page: () => ListViewScreen()),
  GetPage(name: Routes1.simplelist, page: () => SimpleListPage()),
  GetPage(name: Routes1.bouncylist, page: () => BouncyListViewPage()),
  GetPage(name: Routes1.slidablelist, page: () => SildableListPage()),
  GetPage(name: Routes1.swappblelist, page: () => SwappableListPage()),
  GetPage(name: Routes1.reoderablelist, page: () => RecrderbleListPage()),
  GetPage(name: Routes1.expanblelist, page: () => ExpadableListPage()),
  GetPage(name: Routes1.selectionlist, page: () => SelectionListPage()),
];
}
