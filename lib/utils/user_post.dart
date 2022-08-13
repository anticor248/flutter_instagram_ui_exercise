import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  const UserPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    'msgox',
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
        Container(
          height: 300,
          decoration: BoxDecoration(color: Colors.grey),
        ),
        Row(),
        Row(),
        Row(),
      ],
    );
  }
}
