import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_redesign/screens/calls_page.dart';
import 'package:whatsapp_redesign/screens/chats_pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [ChatsPage(), CallsPage()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.plus),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.paperPlane,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.phoneAlt,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}),
              SizedBox(),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.heart,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.user,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
