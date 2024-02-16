import 'package:flutter/material.dart';

class OwnMessage extends StatelessWidget {
  const OwnMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            color: Colors.pink,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hello! Myewhfjn nejwfvn nvjwdn vwnvjwn",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
