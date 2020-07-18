import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/widgets/chats_widget.dart';
import 'package:whatsapp_redesign/widgets/stories_widget.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _appBar(context),
            SizedBox(
              height: 20,
            ),
            Container(
              child: StoriesWidget(),
            ),
            Expanded(child: ChatsWidget())
          ],
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        "Chats",
        style: Theme.of(context).textTheme.headline4.copyWith(
            fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
      ),
    );
  }
}
