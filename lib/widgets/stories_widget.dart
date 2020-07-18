import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/widgets/story_widget.dart';

class StoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container();
    return Column(
      children: [
        _titles(context),
        SizedBox(
          height: 10,
        ),
        buildStories(),
      ],
    );
  }

  Widget buildStories() {
    return Container(
      // color: Colors.yellow,
      height: 150,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int i) =>
              i == 0 ? addStoryButton() : StoryWidget()),
    );
  }

  Widget addStoryButton() {
    return Container(
      width: 80,
      height: 130,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add_circle_outline),
          SizedBox(
            height: 10,
          ),
          Text("Add story")
        ],
      ),
    );
  }

  Widget _titles(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Stories",
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            children: [
              Icon(
                Icons.history,
                size: 18,
              ),
              SizedBox(
                width: 5,
              ),
              Text("All stories")
            ],
          )
        ],
      ),
    );
  }
}
