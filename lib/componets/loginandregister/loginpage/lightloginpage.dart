import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Lightloginpage extends StatelessWidget {
  const Lightloginpage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_b1.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(70),
                child: Center(
                  child: CircleAvatar(
                    radius: 40,
                     backgroundImage: AssetImage("assets/images/img_l3.png"),
                  ),
                ),
              ),
                   Padding(
                    padding: EdgeInsets.all(5.w),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(7),
                               color: Color(0xffCECECE),
                             ),
                            height: 38.h,
                            width: 50.h,
                          ),
                        ),
                        Column(
                          children: [
                            CustomLightTextFiled(
                              controller: emailController,
                              maxLines: 1,
                              readOnly: true,
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              lebal: 'Email',
                            ),
                            CustomLightTextFiled(
                              controller: passController,
                              maxLines: 1,
                              readOnly: true,
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              lebal: 'Password',
                            ),
                            CustomElevtedButton2(
                                title:'Login',
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Not Register?',
                                  style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                                  children: [
                                    TextSpan(
                                      text: ' Create Account ',
                                      style: TextStyle(fontSize: 17.sp, color: Colors.cyan),
                                    ),
                                  ]),
                            ),


                          ],
                        )

                      ],
                    ),

                  ),

            ],
          )
        ],
      ),
    );
  }
}
class CustomLightTextFiled extends StatelessWidget {
  String lebal;
  TextEditingController controller;
  int? maxLength;
  VoidCallback? onTap;
  bool? readOnly;
  int? maxLines;
  TextInputType? keyboardType;
  bool? displayError;
  Color? borderColor;
  InputBorder? border;
  TextStyle? hintStyle;

  CustomLightTextFiled({
    required this.controller,
    required this.lebal,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
    this.displayError,
    this.onTap,
    this.readOnly = false,
    this.borderColor = Colors.grey,
    this.border,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextFormField(
        controller: controller,
        maxLength: maxLength,
        maxLines: maxLines,
        onTap: onTap,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabledBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
          focusedBorder: border ??
              UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff686A6C),
                ),
              ),
          label: Text(lebal,style: TextStyle(color: Colors.grey),),
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}
class CustomElevtedButton2 extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;

  CustomElevtedButton2({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.pressedColor = const Color(0xffBDBCBA),
    this.bgColor =  Colors.cyan,
    this.onTap,
    this.fontColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ElevatedButton(
          onPressed: () => onTap!(),
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(70.w, 4.h)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius ?? 15),
              ),
            ),
            overlayColor: MaterialStateProperty.all(pressedColor),
            backgroundColor: MaterialStateProperty.all(bgColor),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSIze ?? 17.sp,
              color: fontColor,
            ),
          )),
    );
  }
}