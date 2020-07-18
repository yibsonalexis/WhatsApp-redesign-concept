import 'package:flutter/material.dart';

class CardChatWidged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      child: Row(
        children: [
          Container(
            child: ClipOval(
              child: FadeInImage(
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  placeholder: AssetImage("assets/images/loading.gif"),
                  image:
                      NetworkImage("http://lorempixel.com/200/300/fashion/")),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Yibson leudo",
                    style: Theme.of(context).textTheme.headline6),
                SizedBox(
                  height: 8,
                ),
                Text("When is your birthday?")
              ],
            ),
          ),
          Column(
            children: [Text("05:40 PM"), Text("✔️✔️")],
          )
        ],
      ),
    );
  }
}
