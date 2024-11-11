import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                fillColor: const Color.fromARGB(180, 255, 255, 255),
                filled: true,
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 10),
                    borderRadius: BorderRadius.circular(50))),
          ),
        ),
        Expanded(
            child: IconButton(
                onPressed: () {
                  //Go to notification
                },
                icon: const Icon(
                  Icons.circle_notifications_sharp,
                  color: Color.fromARGB(180, 255, 253, 253),
                  size: 50,
                )))
      ],
    );
  }
}
