import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String? messageText;
  const MessageWidget(
    this.messageText, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
          color: const Color.fromARGB(180, 255, 255, 255),
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Message !",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            messageText!,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
