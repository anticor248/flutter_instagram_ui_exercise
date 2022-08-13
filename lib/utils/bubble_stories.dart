import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String storiesName;
  BubbleStories({required this.storiesName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          ),
          SizedBox(
            height: 6,
          ),
          Text(storiesName),
        ],
      ),
    );
  }
}
