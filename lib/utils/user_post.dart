import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String userPostName;
  UserPost({required this.userPostName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Above the post profile pic and name with 3 dot icon
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    userPostName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [Icon(Icons.grid_view_outlined)],
              ),
            ],
          ),
        ),
        //post here container
        Container(
          height: 300,
          decoration: BoxDecoration(color: Colors.grey),
        ),
        //below the post icons 4 icons, like--comment--share------save(mark)
        Row(
          children: [
            Text(
              'tunahan',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        //who and how many likes
        Row(),
        //username and  comments for posts
        Row(),
      ],
    );
  }
}
