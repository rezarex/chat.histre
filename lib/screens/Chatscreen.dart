import 'package:chatscreen/ui/Messagecard.dart';
import 'package:chatscreen/ui/Receivedmsgcard.dart';
import 'package:flutter/material.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

final sendbird = SendbirdSdk(appId: " BC823AD1-FBEA-4F08-8F41-CF0D9D280FBF");

class _ChatscreenState extends State<Chatscreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    try {
      final user = await sendbird.connect('userId: USER_ID',
          accessToken: 'f93b05ff359245af400aa805bafd2a091a173064');
    } catch (e) {
      // error
    }
  }

  // Future<void> joinChannel() async {
  //   try {
  //     final openChannel = await OpenChannel.getChannel(
  //         'sendbird_open_channel_14092_bf4075fbb8f12dc0df3ccc5c653f027186ac9211');
  //     await openChannel.enter();
  //   } catch (e) {
  //     // error
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: const InkWell(
          child: Icon(
            Icons.arrow_back_ios,
            size: 24,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "John Doe",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(
              children: [
                OwnMessage(
                    // message: 'Hello',
                    ),
                ReplyMessage()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(
                      margin: EdgeInsets.only(left: 10, right: 2, bottom: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.grey[800],
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Say something..",
                          suffixIcon: ElevatedButton(
                            onPressed: () {},
                            child:
                                Icon(Icons.arrow_upward, color: Colors.white),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(2),
                              backgroundColor: Colors.grey[700],
                              foregroundColor: Colors.red,
                            ),
                          ),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
