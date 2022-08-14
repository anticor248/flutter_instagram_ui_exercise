import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String userPostName;
  UserPost({required this.userPostName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [Icon(Icons.grid_view_outlined)],
                  ),
                ],
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

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_outline,
                    size: 28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 4),
                    child: Icon(Icons.messenger_outline, size: 28),
                  ),
                  Icon(
                    Icons.send,
                    size: 28,
                  )
                ],
              ),
              Icon(Icons.bookmark_border, size: 32)
            ],
          ),
        ),

        //who and how many likes

        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: [
              Text(
                'Liked by ',
              ),
              Text(
                'tunahan',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                ' and ',
              ),
              Text(
                ' others ',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),

        //username and  comments for posts
        //TODO => Fix textspan richtext align left/start

        Padding(
          padding: EdgeInsets.all(8),
          child: RichText(
            textAlign: TextAlign.left,
            text:
                TextSpan(style: (TextStyle(color: Colors.black87)), children: [
              TextSpan(
                text: 'Lorem Ipsum',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              TextSpan(
                text: '  ',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              TextSpan(
                text:
                    'ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock',
              )
            ]),
          ),
        )
      ],
    );
  }
}
