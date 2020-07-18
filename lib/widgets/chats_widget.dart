import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/widgets/card_chat_widget.dart';

class ChatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 15, top: 10, right: 15),
      child: ListView.builder(
          itemCount: 15, itemBuilder: (context, int i) => CardChatWidged()),
    );
  }
}
