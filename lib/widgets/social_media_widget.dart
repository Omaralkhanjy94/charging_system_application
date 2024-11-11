import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class SocialMediaWidget extends StatefulWidget {
  final Media? mediaName;
  const SocialMediaWidget({super.key, required this.mediaName});

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

enum Media { Facebook, Whatsapp }

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  late Icon mediaIcon;
  late FlutterSocialButton socialButton;
  late ButtonType buttonType;
  @override
  void initState() {
    initButtonType(widget.mediaName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        decoration: BoxDecoration(
            color: const Color.fromARGB(180, 255, 255, 255),
            border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255), width: 2.8),
            borderRadius: BorderRadius.circular(7)),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          const SizedBox(
            width: 10,
          ),
          FlutterSocialButton(
            mini: true,
            onTap: () {
              go();
            },
            buttonType: buttonType,
          )
        ]));
  }

  void go() {
    String mn = buttonType.name;
    print(mn);
    switch (mn) {
      case 'facebook':
        goToFacebook();
        break;
      case 'whatsapp':
        goToWhatsapp();
        break;
    }
  }

  void goToFacebook() {
    setState(() {
      //Go to facebook
    });
  }

  void goToWhatsapp() {
    setState(() {
      //Go to whatsapp
    });
  }

  void initButtonType(Media? mediaName) {
    switch (widget.mediaName!) {
      case Media.Facebook:
        buttonType = ButtonType.facebook;
        break;
      case Media.Whatsapp:
        buttonType = ButtonType.whatsapp;
        break;
    }
  }
}
