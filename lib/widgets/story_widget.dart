import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: 110,
      height: 150,
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(
                children: [
                  FadeInImage(
                      width: 100,
                      height: 150,
                      fit: BoxFit.cover,
                      placeholder: AssetImage("assets/images/loading.gif"),
                      image: NetworkImage(
                          "http://lorempixel.com/200/300/fashion/")),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          Theme.of(context).primaryColor.withOpacity(.5),
                          Colors.transparent
                        ])),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.white, width: 3)),
              child: CircleAvatar(
                  backgroundImage:
                      NetworkImage('http://lorempixel.com/200/300/fashion/')),
            ),
          ),
          Positioned(
              top: 10,
              left: 10,
              child: Text(
                "Yibson A",
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
