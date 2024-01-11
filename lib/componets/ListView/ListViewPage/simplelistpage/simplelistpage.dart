import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'package:flutteruicomponets/componets/AppsString.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewPage/simplelistpage/simplemodel.dart';
import 'package:flutteruicomponets/componets/ListView/ListViewScreen.dart';
import 'package:get/get.dart';

class SimpleListPage extends StatelessWidget {
  const SimpleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<SimpleListModel> simplepage = [
      SimpleListModel(icon: Icons.map, title: AppsString.Map),
      SimpleListModel(icon: Icons.photo_album_rounded, title: AppsString.Album),
      SimpleListModel(icon: Icons.phone, title: AppsString.Phone),
      SimpleListModel(icon: Icons.desktop_windows, title: AppsString.DeskTopMAc),
      SimpleListModel(icon: Icons.device_hub_rounded, title: AppsString.DeviceHub),
      SimpleListModel(icon: Icons.fastfood, title: AppsString.FastFood),
      SimpleListModel(icon: Icons.flag, title: AppsString.Flag),
      SimpleListModel(icon: Icons.file_copy, title: AppsString.Folder),
      SimpleListModel(icon: Icons.games, title: AppsString.Games),
      SimpleListModel(icon: Icons.keyboard_alt_outlined, title: AppsString.Keyboard),
      SimpleListModel(icon: Icons.group, title: AppsString.Group),
      SimpleListModel(icon: Icons.headset_rounded, title: AppsString.Geadset),
      SimpleListModel(icon: Icons.home, title: AppsString.Home),
      SimpleListModel(icon: Icons.chat, title: AppsString.Chart),
    ];
    return  Scaffold(
      appBar: CustomAppBar(
        title: "List",
        // icon: Icon(Icons.arrow_back,color: Colors.white),
      ),
      body: ListView.builder(
         itemCount: simplepage.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(simplepage[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
              leading:  Icon(simplepage[index].icon,color: Color(0xff77BAC7)) ,
            );
          },),

    );
  }
}
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  String title;
  Widget? icon;
  Color? bgcolor;
  double? height;
  Color? iconColor;

  CustomAppBar({
      required this.title,
        this.icon,
    this.bgcolor = const  Color(0xff77BAC7),
    this.height,
    this.iconColor = Colors.white,

});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,style: TextStyle(color: Colors.white),),
      backgroundColor: bgcolor,
      leading: InkWell(
        onTap: () => Get.off(ListViewScreen()),
          child: Icon(Icons.arrow_back,color: iconColor,))



    );
  }

  @override

  Size get preferredSize => Size(100.w, height ?? (6.h) );

}
