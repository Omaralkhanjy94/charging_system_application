import 'package:charging_system/core/constants/box_decorations.dart';
import 'package:charging_system/core/translate.dart';
import 'package:charging_system/views/home_page.dart';
import 'package:charging_system/widgets/my_text_button.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import '../core/constants/text_styles.dart';
import '../core/constants/colors.dart';
import "../widgets/my_link.dart";
import '../views/forget_password_page.dart';
import '../views/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          )),
          child: SingleChildScrollView(
            child: Column(
              textDirection: TextDirection.rtl,
              children: [
                const SizedBox(
                  height: 60,
                ),
                Text("Cooperation is fast and easy".tr(context),
                    style: GoogleFonts.markaziText(textStyle: subTitleStyle)),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  "login".tr(context),
                  style: const TextStyle(fontSize: 16, color: secondColor),
                ),
                const SizedBox(
                  height: 20,
                ),

                ///email
                TextFormField(
                  controller: emailController,
                  textDirection: TextDirection.rtl,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                    labelText: "email".tr(context),
                  ),
                ),

                ///password
                TextFormField(
                  controller: passwordController,
                  obscureText: passwordVisible == false,
                  style: primaryTextStyle,
                  decoration: InputDecoration(
                      labelText: "password".tr(context),
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                          icon: passwordVisible == true
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    MyLink(
                        value: "forget_password".tr(context),
                        page: const ForgetPasswordPage(),
                        style: const TextStyle(color: Colors.white)),
                    CheckboxMenuButton(
                      value: stayLogined,
                      child: Text(
                        "stay_logined".tr(context),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          stayLogined = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextButton(
                  onPressed: () {
                    if (emailController.text == "omaralkhanji@gmail.com" &&
                        passwordController.text == "123456") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage(
                                    username: "عمر خالد مروان الخانجي",
                                  )));
                    }
                  },
                  title: "login".tr(context),
                  decoration: primaryBoxDecoration,
                  textColor: secondColor,
                ),
                MyTextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                    print("Go to register page.");
                  },
                  title: "create_an_account".tr(context),
                  decoration: secondBoxDecoration,
                  textColor: primaryColor,
                ),
                const SizedBox(
                  height: 250,
                ),
                Text("مع تعاون تحتفظ شركات النقل بالمزيد من المال".tr(context),
                    style: GoogleFonts.sail(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool stayLogined = false;
}
