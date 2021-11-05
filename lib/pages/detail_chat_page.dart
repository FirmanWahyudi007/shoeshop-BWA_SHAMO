// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoeshop/theme.dart';
import 'package:shoeshop/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);
  PreferredSizeWidget header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: AppBar(
        backgroundColor: background1Color,
        centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/image_shop_logo_online.png",
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shoe Store",
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  "Online",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: background5Color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/Running.png",
              width: 54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "COURT VISION VISION201",
                  style: primaryTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$57,15",
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            "assets/button_close.png",
            width: 22,
          ),
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: navColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: "Typle Message...",
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/button_send.png",
                width: 45,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ChatBubble(
          isSender: true,
          hasProduct: true,
          text: 'Hi, This item is still available?',
        ),
        ChatBubble(
          isSender: false,
          hasProduct: true,
          text: 'Good night, This item is only available in size 42 and 43',
        ),
        ChatBubble(
          isSender: false,
          hasProduct: false,
          text: 'Good night, This item is only available in size 42 and 43',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background3Color,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
