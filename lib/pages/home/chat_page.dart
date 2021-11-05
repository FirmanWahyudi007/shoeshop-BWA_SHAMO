// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeshop/theme.dart';
import 'package:shoeshop/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: background1Color,
      centerTitle: true,
      title: Text(
        "Message Support",
        style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium,
        ),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: background3Color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon_headset.png",
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Opss no message yet?",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "You have never done a transaction",
              style: secondaryTextStyle,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              width: 152,
              height: 44,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 24,
                  ),
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Explore Store",
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: background3Color,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
