import 'package:charging_system/core/constants/text_styles.dart';
import 'package:charging_system/core/translate.dart';
import 'package:charging_system/views/home_page.dart';
import 'package:charging_system/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/box_decorations.dart';
import '../core/constants/colors.dart';
import '../widgets/my_text_button.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  bool letPasswordVisible = false, letRePasswordVisible = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController(),
      rePasswordTextController = TextEditingController();
  bool passwordMatched = false;
  String password = "", repassword = "";
  final ButtonStyle rgstBtnStyle = ElevatedButton.styleFrom(
      textStyle:
          const TextStyle(color: Color.fromARGB(255, 0, 0, 222), fontSize: 12),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              textDirection: TextDirection.rtl,
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40.0,
                ),

                Text(
                  "password".tr(context),
                  style: titleStyle,
                ),
                Text(
                  "create_new_password".tr(context),
                  style: subHeaderStyle,
                ),

                ///email
                Text(
                  "email".tr(context),
                  style: titleStyle,
                ),

                ///email
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  textDirection: TextDirection.rtl,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "name@example.com",
                      hintStyle: const TextStyle(color: hintColor)),
                ),
                Text(
                  "password".tr(context),
                  style: titleStyle,
                ),

                ///password
                TextFormField(
                    onChanged: (password) {
                      this.password = password;
                      print("password:${this.password}.");
                    },
                    controller: passwordTextController,
                    obscureText: letPasswordVisible == false,
                    textDirection: TextDirection.rtl,
                    style: primaryTextStyle,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "password".tr(context),
                      hintStyle: const TextStyle(color: hintColor),
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              letPasswordVisible = !letPasswordVisible;
                            });
                          },
                          icon: letPasswordVisible == true
                              ? const Icon(
                                  Icons.visibility,
                                  color: secondColor,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: secondColor,
                                )),
                    )),
                if (passwordMatched)
                  const Text(
                    "password_not_matched",
                    style: errorTextStyle,
                  ),

                ///re password
                Text(
                  "re_password".tr(context),
                  style: titleStyle,
                ),
                TextFormField(
                  onChanged: (repassword) {
                    this.repassword = repassword;
                    setState(() {
                      passwordMatched = password != repassword;
                    });
                  },
                  controller: rePasswordTextController,
                  obscureText: letRePasswordVisible == false,
                  // keyboardType: letRePasswordVisible == true
                  //     ? TextInputType.visiblePassword
                  //     : TextInputType.text,
                  textDirection: TextDirection.rtl,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: secondColor)),
                    hintText: "password".tr(context),
                    hintStyle: const TextStyle(color: hintColor),
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            letRePasswordVisible = !letRePasswordVisible;
                          });
                        },
                        icon: letRePasswordVisible == true
                            ? const Icon(
                                Icons.visibility,
                                color: secondColor,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: secondColor,
                              )),
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                MyTextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                    print("To save");
                  },
                  title: "save".tr(context),
                  decoration: secondBoxDecoration,
                  textColor: primaryColor,
                ),
                Center(
                  child: Text(
                      "مع تعاون تحتفظ شركات النقل بالمزيد من المال".tr(context),
                      style: GoogleFonts.sail(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
