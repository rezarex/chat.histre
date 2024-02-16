import 'package:flutter/material.dart';

class ReplyMessage extends StatelessWidget {
  const ReplyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              "assets/profile.jpg",
            ),
            // backgroundColor: Colors.white,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width - 45,
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.grey[800],
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
        ],
      ),
    );
  }
}
