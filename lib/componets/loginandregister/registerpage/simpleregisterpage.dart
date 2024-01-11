import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class SimpleRegistorPage extends StatefulWidget {
  const SimpleRegistorPage({super.key});

  @override
  State<SimpleRegistorPage> createState() => _SimpleRegistorPageState();
}

class _SimpleRegistorPageState extends State<SimpleRegistorPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/img_b5.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("REGISTER ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan,
                            fontSize: 25),
                      ),
                    ),
                    Image.asset('assets/images/img_hello.png',
                        height: 25.h, width: 30.w),
                  ],
                ),
              ),
              Column(
                children: [
                  CustomSimpleTextFiled(
                    controller: nameController,
                    lebal: 'UaserName',
                    prefixIcon: Icon(Icons.person_2, color: Colors.cyan),
                  ),
                  CustomSimpleTextFiled(
                    controller: emailController,
                    lebal: 'Email',
                    prefixIcon: Icon(Icons.email_rounded, color: Colors.cyan),
                  ),
                  CustomSimpleTextFiled(
                    controller: passController,
                    lebal: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.cyan),
                  ),
                  CustomElevtedButton3(
                    title: "REGISTER",),
                  // SizedBox(height: 2.h,),
                  RichText(
                    text: TextSpan(
                        text: 'Alareay Register?',
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                        children: [
                          TextSpan(
                            text: ' Log in',
                            style: TextStyle(fontSize: 17.sp, color: Colors.blue,fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomSimpleTextFiled extends StatelessWidget {
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
  Widget prefixIcon;

  CustomSimpleTextFiled({
    required this.controller,
    required this.lebal,
    required this.prefixIcon,
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
          prefixIcon: prefixIcon,
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
          label: Text(
            lebal,
            style: TextStyle(color: Colors.cyan),
          ),
          hintStyle: hintStyle,
        ),
      ),
    );
  }
}

class CustomElevtedButton3 extends StatelessWidget {
  String title;
  double? fontSIze;
  FontWeight? fontWeight;
  double? radius;
  Color? pressedColor;
  Color? bgColor;
  Function? onTap;
  Color? fontColor;

  CustomElevtedButton3({
    required this.title,
    this.fontSIze,
    this.fontWeight,
    this.radius,
    this.pressedColor = const Color(0xffBDBCBA),
    this.bgColor =  Colors.cyan,
    this.onTap,
    this.fontColor = Colors.white,
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
