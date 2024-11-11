import 'package:charging_system/widgets/company_info_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/social_media_widget.dart';
import '../widgets/message_widget.dart';
import '../widgets/header_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  final String? username;
  const HomePage({super.key, this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fill)),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const HeaderWidget(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110,
                      width: 225,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(180, 255, 255, 255),
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      child: const Column(
                        children: [
                          CompanyInfo(title: "CompanyName", small: false),
                          SizedBox(
                            height: 5,
                          ),
                          CompanyInfo(
                              title: "Company Name: CompanyName", small: true),
                          CompanyInfo(
                              title: "Company Name: CompanyName", small: true),
                          CompanyInfo(
                              title: "Company Name: CompanyName", small: true),
                          CompanyInfo(
                              title: "Company Name: CompanyName", small: true),
                          CompanyInfo(
                              title: "Company Name: CompanyName", small: true),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3.5),
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/logo.jpg"),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialMediaWidget(mediaName: Media.Facebook),
              const SizedBox(
                height: 20,
              ),
              const SocialMediaWidget(mediaName: Media.Whatsapp),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: MessageWidget("your money will arrive at 7 p.m"))
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(180, 255, 255, 255),
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(0, 255, 254, 254),
          color: const Color.fromARGB(255, 4, 14, 107),
          items: const [
            Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 38,
            ),
            Icon(
              Icons.playlist_add_check_circle_rounded,
              color: Colors.white,
              size: 38,
            ),
            Icon(
              Icons.location_on_rounded,
              color: Colors.white,
              size: 38,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 38,
            ),
            Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
              size: 38,
            ),
          ]),
    );
  }
}
