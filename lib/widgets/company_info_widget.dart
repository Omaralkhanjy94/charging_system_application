import 'package:flutter/material.dart';

class CompanyInfo extends StatelessWidget {
  final String? title;
  final bool? small;
  const CompanyInfo({super.key, required this.title, required this.small});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(fontSize: small == false ? 14 : 10, color: Colors.white),
      textAlign: TextAlign.center,
    );
  }
}
