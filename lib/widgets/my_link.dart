import 'package:flutter/material.dart';

class MyLink extends StatelessWidget {
  final String? value;
  final Widget? page;
  final TextStyle? style;
  const MyLink(
      {super.key,
      required this.value,
      required this.page,
      required this.style});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page!));
        },
        child: Text(
          value!,
          style: style,
        ));
  }
}
