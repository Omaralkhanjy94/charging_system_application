import 'package:charging_system/core/translate.dart';
import 'package:charging_system/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: const DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height / 3),
            Container(
              height: MediaQuery.sizeOf(context).height / 3,
              width: MediaQuery.sizeOf(context).height / 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/logo.jpg"),
                  )),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 3 - 20,
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
    ));
  }
}
