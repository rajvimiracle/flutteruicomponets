import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

Color Login1PrimaryColor = Colors.black;

class DarkLoginPage extends StatelessWidget {
  TextEditingController nameContrlooer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Image.asset("assets/images/background.png",fit: BoxFit.cover,height: 250.h,),
          Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(70),
              child: Center(child: Image.asset("assets/images/proflie.png",height: 15.h,)),
            ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: TextFormField(
                  controller: nameContrlooer,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    focusColor: Colors.white,
                    prefixIcon: Icon(Icons.person),
                    prefixIconColor: Colors.white,
                   hintText: "dfjgkskgf",
                  ),

                ),
              )
            ]
          ),
        ]
        // child: Column(
        //   children: [
        //     Login1TextField(hinttext: "Enter email"),
        //     Login1TextField(hinttext: "Enter password"),
        //   ],
        // ),
      ),
    );
  }
}

class Login1TextField extends StatelessWidget {
   String hintext;
   Widget? prefixIcon;
   TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(

      ),
      onTap: () {

      },
    );
  }
}