import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutteruicomponets/componets/ListView/listviewmodel.dart';
import 'package:flutteruicomponets/componets/loginandregister/logilistscreen/loginregistermodel.dart';
import 'package:flutteruicomponets/routes/route/routes.dart';
import 'package:get/get.dart';


class ListViewScreen extends StatelessWidget {
  List<ListViewModel> listviewpage = [
    ListViewModel(text: "Simple List", screen: "/simplelist"),
    ListViewModel(text: "Bouncy List", screen: "/bouncylist"),
    ListViewModel(text: "Sildable List", screen: "/slidablelist"),
    ListViewModel(text: "Swappable List", screen: "/swappblelist"),
    ListViewModel(text: "Recorderable List", screen: "/reoderablelist"),
    ListViewModel(text: "Expandable List", screen: "/expanblelist"),
    ListViewModel(text: "Selection List", screen: "/selectionlist"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text(
          "List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff77BAC7),
      ),

      // backgroundColor: Color(0xffDBF9DB),
      body: ListView.builder(
        itemCount: listviewpage.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(listviewpage[index].screen);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                shadowColor: Color(0xff0909FF),
                child: Container(
                  height: 7.h,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  width: 2.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff43C6DB)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      listviewpage[index].text,
                      style: TextStyle(
                        color: Color(0xff4545FF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
          /*return InkWell(
              onTap: () {
                switch (index) {
                  case 0:
                    Get.toNamed(Routes.darkloginpage);
                    break;

                  case 1:
                    Get.toNamed(Routes.animatedpage);
                    break;

                  case 2:
                    Get.toNamed(Routes.lightpage);
                    break;

                  case 3:
                    Get.toNamed(Routes.simplepage);
                    break;
                }
              },
              child: Text(datas[index]));*/
        },
      ),
    );
  }
}
