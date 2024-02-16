import 'package:chatscreen/screens/Chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color(0x000000)),
      debugShowCheckedModeBanner: false,
      home: const Chatscreen(),
    );
  }
}
